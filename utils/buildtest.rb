#!/usr/bin/ruby

# buildtest - use llvm-mc to assemble a test, then parse the output into ascii-binary for the CPU to run while preserving the required comments.

require 'open3'

LLVM_MC="#{ENV['HOME']}/llvm/build/bin/llvm-mc"
CMDLINE="-assemble -triple=eclair -preserve-comments -show-encoding"

if(ARGV.length != 1 and ARGV.length != 2) then
  puts "usage: #{$0} testfile [outfile]"
  Kernel.exit 1
end
asmfilename = ARGV[0]

asm = ""
File.open(asmfilename, "r").each_line do |line|
  if(/#include\s+\"([^\"]+)\"/.match(line)) then
    incfile = /#include\s+\"([^\"]+)\"/.match(line)[1]
    asm += File.open(incfile, "r").read
    asm += "\n"
  else
    asm += line
  end
end

stdin, stdout, stderr, wait_thr = Open3.popen3(LLVM_MC, *CMDLINE.split(" "))
stdin.print asm
stdin.close
err = stderr.read
if(err.length > 0) then
  puts "Errors found while assembling, aborting!"
  puts err
  Kernel.exit -1
end

outfd = STDOUT
outfd = File.open(ARGV[1], "w") if ARGV[1]

# run through the output from the assembler and convert it to
# the format that iverilog will want
outfd.puts "@000"
stdout.each_line do |line|
  line.chomp!
  # ignore the marker that the text section is starting
  next if /^\s*\.text\s*$/.match(line)
  # the 'encoding' comment on each line is what we use to get the hex
  # values that make up the output
  if(/encoding:\s*\[([^\]]+)/.match(line)) then
    hex = /encoding:\s*\[([^\]]+)/.match(line)[1]
    hex.split(",").each do |value|
      outfd.puts value.to_i(16).to_s(2).rjust(8, "0")
    end
  # .org lines specify new absolute locations
  # iverilog wants @[hex value] not .org [decimal value] so convert it
  elsif(/.org\s+(\d+)/.match(line)) then
    loc, comments = /.org\s+(\d+)\s*,\s*\d+\s*(.*)/.match(line).captures
    outfd.puts "@#{sprintf("%03X", loc.to_i)} #{comments.sub('#','//')}"
  # the test framework uses comments, so we pass these through as-is
  elsif(/^\s*#.*/.match(line)) then
    comment = /^\s*#(.*)/.match(line)[1]
    outfd.puts "// #{comment}"
  # .data lines specify raw values to pass into the output
  elsif(/^\s*\.data\s+(\d+)/.match(line)) then
    value = /^\s*\.data\s+(\d+)/.match(line)[1]
    outfd.puts value.to_i.to_s(2).rjust(8, "0")
  else
    outfd.puts line
  end
end
