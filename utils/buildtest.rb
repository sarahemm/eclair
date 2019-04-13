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

stdin, stdout, stderr, wait_thr = Open3.popen3(LLVM_MC, *CMDLINE.split(" "), asmfilename)
err = stderr.read
if(err.length > 0) then
  puts "Errors found while assembling, aborting!"
  puts err
  Kernel.exit -1
end

outfd = STDOUT
outfd = File.open(ARGV[1], "w") if ARGV[1]

outfd.puts "@000"
stdout.each_line do |line|
  line.chomp!
  next if /^\s*\.text\s*$/.match(line)
  if(/encoding:\s*\[([^\]]+)/.match(line)) then
    hex = /encoding:\s*\[([^\]]+)/.match(line)[1]
    hex.split(",").each do |value|
      outfd.puts value.to_i(16).to_s(2).rjust(8, "0")
    end
  elsif(/.org\s+(\d+)/.match(line)) then
    loc = /.org\s+(\d+)/.match(line)[1]
    outfd.puts "@#{loc}"
  elsif(/^\s*#.*/.match(line)) then
    comment = /^\s*#(.*)/.match(line)[1]
    outfd.puts "// #{comment}"
  else
    outfd.puts line
  end
end
