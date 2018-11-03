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

# read the whole file into an array
asm_lines = Array.new
File.open(ARGV[1], "r") do |asmfile|
  asm_lines = asmfile.readlines
end

# go through the array and handle any includes
asm_lines.each_index do |line_index|
  line = asm_lines[line_index]
  next if !matches = /#include\s+\"([^\"]+)\"/.match(line)
  file = matches[1]
  File.open(file, "r") do |incfile|
    asm_lines[line_index] = incfile.readlines
  end
end

asm_lines.flatten!

# go through and assemble the input into output machine code
asm_lines.each do |line|
  operands = line.split()
  opcode = operands.shift

  if(/^(@\d+|\/\/|$)/.match(line)) then
    # address lines, blank lines, and comment lines we pass through as-is
    puts line
    next
  end
  if(opcode == "data") then
    # data bytes are just included as-is
    # TODO: DRY this out, it's similar to code below
    operand_raw = operands[0]
    operand = 0
    if(/^0x/.match(operand_raw)) then
      operand = operand_raw.to_i 16
      operand_16bit = true if operand_raw.length == 6
    elsif(/^0b/.match(operand_raw)) then
      operand = operand_raw.to_i 2
    else
      operand = operand_raw.to_i
    end
    operand_hex = sprintf("0x%02X", operand)
    operand_bin = operand.to_s(2).rjust(8, '0')
    puts "#{operand_bin}\t// data byte #{operand_hex} / #{operand}"
    next
  elsif(!instructions[opcode]) then
    $stderr.puts "\nERROR: No such instruction '#{opcode}'."
    Kernel.exit 1
  end
  opcode_bin = instructions[opcode].to_s(2).rjust(8, '0')
  puts "#{opcode_bin}\t// #{opcode}"
  # if it's a two-byte instruction, figure out and add the second byte
  if(matches = /\.[a-d]([a-d])$/.match(opcode)) then
    regcode_byte = matches[1].ord - 'a'.ord
    regcode_bin = regcode_byte.to_s(2).rjust(8, '0')
    puts "#{regcode_bin}\t// reg: #{matches[1]}"
  end
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