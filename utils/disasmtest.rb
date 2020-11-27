#!/usr/bin/ruby

# disasmtest - use llvm-mc to assemble a test, then disassemble a test,
# and ensure the two are the same.

require 'open3'
require 'tempfile'

LLVM_MC="#{ENV['HOME']}/llvm-eclair/build/bin/llvm-mc"
BASE_ASM_CMDLINE="-assemble -triple=eclair -show-encoding"
BASE_DISASM_CMDLINE="-disassemble -triple=eclair"

if(ARGV.length != 1) then
  puts "usage: #{$0} testfile.s"
  Kernel.exit 1
end
asmfilename = ARGV[0]

cmdline = "#{BASE_ASM_CMDLINE} #{asmfilename}"
stdin, stdout, stderr, wait_thr = Open3.popen3(LLVM_MC, *cmdline.split(" "))
stdin.close
err = stderr.read
if(err.length > 0) then
  puts "Errors found while assembling, aborting!"
  puts err
  Kernel.exit -1
end

# take the hex out of the assembled file and write that out separately
hextempfile = Tempfile.open('eclair-disasmtest-hex')
stdout.each_line do |line|
  line.chomp!
  # ignore the marker that the text section is starting
  next if /^\s*\.text\s*$/.match(line)
  # the 'encoding' comment on each line is what we use to get the hex
  # values that make up the output
  if(/encoding:\s*\[([^\]]+)/.match(line)) then
    hex = /encoding:\s*\[([^\]]+)/.match(line)[1]
    hex.split(",").each do |value|
      hextempfile.write "#{value} "
    end
  end
end
hextempfile.close

asmtempfile = Tempfile.open('eclair-disasmtest-asm')
# take the original assembler file and modify hex constants
# since the disassembler doesn't pad them with zeros
asminfile = open(asmfilename, "r")
asminfile.each_line do |line|
  # strip comments
  line.gsub! /\/\/.*/, ''
  next if /\.(text|org|data)/.match(line) or line.include? '#include' or line == ''
  # convert any hex constants to decimal
  while(matches = /(0x[A-Fa-f0-9]+)/.match(line)) do
    break if !matches
    hex = matches[1]
    dec = matches[1].to_i(16).to_s
    line.gsub!(hex, dec)
  end
  # convert any binary constants to decimal
  while(matches = /0b([01]+)/.match(line)) do
    break if !matches
    bin = matches[1]
    dec = matches[1].to_i(2).to_s
    line.gsub!("0b#{bin}", dec)
  end
  # 'pop pc' is an alias for 'ret' that gets disassembled as the latter
  line.gsub! 'pop pc', 'ret'
  asmtempfile.write line
end
asmtempfile.close
asminfile.close

disasmtempfile = Tempfile.open('eclair-disasmtest-disasm')
rv = system("#{LLVM_MC} #{BASE_DISASM_CMDLINE} #{hextempfile.path} > #{disasmtempfile.path}")
if(rv == false) then
  STDERR.puts "FAILED to disassemble #{asmfilename}."
  hextempfile.unlink
  asmtempfile.unlink
  disasmtempfile.unlink
  Kernel.exit 1
end

if false then
  # for troubleshooting
  puts "==="
  puts File.read(asmtempfile.path)
  puts "---"
  puts File.read(disasmtempfile.path)
  puts "==="
end

rv = system("diff -Biw -I '\.text' #{asmtempfile.path} #{disasmtempfile.path}")
if(rv == false) then
  STDERR.puts "FAILED to properly disassemble #{asmfilename}."
  hextempfile.unlink
  asmtempfile.unlink
  disasmtempfile.unlink
  Kernel.exit 2
end

puts "Sucessfully disassembled #{asmfilename} with no discrepancies."

hextempfile.unlink
asmtempfile.unlink
disasmtempfile.unlink