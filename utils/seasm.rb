#!/usr/bin/ruby
# seasm - simple ECLair assembler
# temporary assembler that's being used until the instruction set is a bit
# more finalized and we port a real one (probably vasm)

# read the instruction list out of microcode.txt
instructions = Hash.new
File.open(ARGV[0], "r") do |mcfile|
  mcfile.each_line do |line|
    values = line.split(/\s+/)
    next if values[0] == nil
    case values.shift
      when "location" then
        # location lines list the control store address that each instruction starts at
        instruction = values.shift
        address = values.shift.to_i
        instructions[instruction] = address
    end
  end
end

File.open(ARGV[1], "r") do |asmfile|
  asmfile.each_line do |line|
    operands = line.split()
    opcode = operands.shift
    
    if(/^(@\d+|\/\/|$)/.match(line)) then
      # address lines, blank lines, and comment lines we pass through as-is
      puts line
      next
    end
    if(!instructions[opcode]) then
      puts "\nERROR: No such instruction '#{opcode}'."
      break
    end
    opcode_bin = instructions[opcode].to_s(2).rjust(8, '0')
    puts "#{opcode_bin}\t// #{opcode}"
    operand_nbr = 0
    operands.each do |operand_raw|
      operand = operand_raw.to_i
      operand_hex = sprintf("0x%02X", operand)
      if(/16/.match(opcode)) then
        # operand(s) are 16 bits
        operand_l = operand & 0x00FF
        operand_h = (operand & 0xFF00) >> 8
        operand_lbin = operand_l.to_s(2).rjust(8, '0')
        operand_hbin = operand_h.to_s(2).rjust(8, '0')
        

        puts "#{operand_lbin}\t// low-byte of operand #{operand_nbr} for #{opcode} - #{operand_hex} / #{operand}"
        puts "#{operand_hbin}\t// high-byte of operand #{operand_nbr}"
      else
        # operand(s) are 8 bits
        operand_bin = operand.to_s(2).rjust(8, '0')
        puts "#{operand_bin}\t// operand #{operand_nbr} for #{opcode} - #{operand_hex} / #{operand}"
      end
      operand_nbr += 1
    end
  end
end