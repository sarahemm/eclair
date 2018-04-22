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
      when "alias" then
        # alias lines list alternate names for instructions
        instruction = values.shift
        real_instruction = values.shift
        instructions[instruction] = instructions[real_instruction]
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
      $stderr.puts "\nERROR: No such instruction '#{opcode}'."
      Kernel.exit 1
    end
    opcode_bin = instructions[opcode].to_s(2).rjust(8, '0')
    puts "#{opcode_bin}\t// #{opcode}"
    operand_nbr = 0
    operands.each do |operand_raw|
      break if operand_raw == "//"
      operand = nil
      operand_16bit = false
      if(/^0x/.match(operand_raw)) then
        operand = operand_raw.to_i 16
        operand_16bit = true if operand_raw.length == 6
      elsif(/^0b/.match(operand_raw)) then
        operand = operand_raw.to_i 2
      else
        operand = operand_raw.to_i
      end
      operand_hex = sprintf("0x%02X", operand)
      # TODO: come up with a better way to do this
      if((/16/.match(opcode) and not /^sh/.match(opcode)) or operand_16bit) then
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