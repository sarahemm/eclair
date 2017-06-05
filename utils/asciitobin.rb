#!/usr/bin/ruby
# asciitobin - Convert binary-text programs into true-binary to put into ROMs or the functional simulator.

addr = 0
prog = []
File.open(ARGV[0], "r") do |txtfile|
  txtfile.each_line do |line|
    if(/^(\/\/|$)/.match(line)) then
      # comments we ignore
      next
    end
    if(/^@(\d+)$/.match(line)) then
      # address lines we seek
      addr = $1.to_i(16)
      puts "Seeked to #{addr}"
      next
    end
    if(/^(\d+).*$/.match(line)) then
      # assembler lines we convert to binary
      puts "#{addr}: Converted #{$1}"
      prog[addr] = $1.to_i(2)
    end
    addr += 1
  end
end

p prog

File.open("#{ARGV[0]}.rom", "w") do |romfile|
  prog.each_index do |idx|
    if(prog[idx]) then
      romfile.write prog[idx].chr
    else
      romfile.write 0.chr
    end
  end
end