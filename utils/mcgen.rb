#!/usr/bin/ruby
# mcgen - generate microcode binary output based on a text input file

files = []
mapfiles = []
fields = {}
enums = {}
locations = []
instructions = {}
# read in the microcode text file and fill a bunch of arrays with the info we'll need
File.open(ARGV[0], "r") do |infile|
  infile.each_line do |line|
    line.gsub! /#.*/, ""
    values = line.split(/\s+/)
    next if values[0] == nil
    case values.shift
      when "file" then
        # files specify an output file and which bits go into it
        filename = values.shift
        start_bit = values.shift.to_i
        nbr_bits = values.shift.to_i
        files.push :filename => filename, :start => start_bit, :length => nbr_bits
      when "mapfile" then
        # mapfiles specify an output file for mapping address to instruction (for gtkwave or similar)
        filename = values.shift
        mapfiles.push :filename => filename
      when "field" then
        # fields specify a name for a bit or series of bits in the microcode
        field = values.shift
        start_addr = values.shift.to_i
        end_addr = start_addr + values.shift.to_i - 1
        fields[field] = (start_addr..end_addr)
      when "enum" then
        # enums specify a name for a bit or combination of bits used in a field
        field = values.shift
        name = values.shift
        value = values.shift.to_i
        enums[field] = {} if !enums[field]
        enums[field][name] = value
      when "location" then
        # locations specify where instructions start in microcode
        instruction = values.shift
        start_addr = values.shift.to_i
        if(locations[start_addr]) then
          raise "Location #{start_addr} already in use by '#{locations[start_addr]}', can't use it for '#{instruction}'"
        end
        locations[start_addr] = instruction
      when "instruction" then
        # instructions list which values need to be set for each row of an instruction
        instruction = values.shift
        instructions[instruction] = [] if !instructions[instruction]
        instructions[instruction] << values
      else
        raise "Unknown field type."
    end
  end
end

# generate the actual array of bits for the output
# FIXME: right now we assume the last start_addr + 4 is the end, shouldn't do this
mc_bits = []
mc_descs = []
(0..locations.length+4).each do |addr|
  instruction = locations[addr]
  next if !instruction
  last_mc_bits = 0
  if(!instructions.include? instruction) then
    raise "No definition found for instruction #{instruction} at address #{addr}"
  end
  instructions[instruction].each do |data|
    raise "#{instruction} overlaps with previous instruction at address 0x%03X" % addr if mc_bits[addr]
    mc_bits[addr] = 0
    if(data[0] == "hold_last") then
      # start off with what we used last time if the first field is "hold_last"
      mc_bits[addr] = last_mc_bits
    end
    description = "";
    next_addr = nil;
    data.each do |field|
      field_name, enum_name = field.match(/([^\(]+)\(?([^\)]*)\)?/).captures
      if(field_name == "hold_last") then
        description += "#{field_name} "
        next
      end
      if(field_name == "next_addr") then
        if(enum_name == "ir") then
          description = "next: ir #{description}"
          next_addr = 0
          next
        end
        loc_addr = locations.find_index(enum_name)
        next_addr = loc_addr
        description = "next: 0x#{loc_addr.to_s(16)} #{description}"
        next
      end
      raise "Invalid field '#{field_name}' in instruction '#{instruction}'" if !fields[field_name]
      # find out if there are enums for this field, and make sure they're valid and used if so
      raise "Enum expected for field '#{field_name}' in instruction #{instruction}" if enums[field_name] and enum_name == ""
      raise "No enum expected for field #{field_name} in instruction #{instruction}" if enum_name != "" and !enums[field_name]
      raise "Invalid enum '#{enum_name}' given for field '#{field_name}' in instruction #{instruction}" if enum_name != "" and !enums[field_name][enum_name]
      # TODO: check that we don't overflow the length of the field
      # if no enum used, then specifying the field means we want it as a 1
      bit_val = 1
      bit_val = enums[field_name][enum_name] if enums[field_name]
      mc_bits[addr] |= bit_val << fields[field_name].begin
      description += "#{field_name}(#{enum_name}) " if enum_name != ""
      description += "#{field_name} " if enum_name == ""
    end
    next_addr = addr + 1 if next_addr == nil
    last_mc_bits = mc_bits[addr]
    mc_bits[addr] |= next_addr << fields["next_addr"].begin
    mc_descs[addr] = description
    addr += 1
  end
end

# assemble the arrays of bits into whatever combination of files the input file requests
files.each do |file_info|
  filename = file_info[:filename]
  start = file_info[:start]
  length = file_info[:length]
  mask = (2 ** length) - 1 << start
  File.open(filename, 'w') do |mcfile|
    mcfile.puts "// #{filename} - bits #{start}-#{start+length-1} of ECLair microcode"
    mc_bits.each_index do |addr|
      if(!mc_bits[addr]) then
        mcfile.puts "@%03X // no microcode at this address" % addr
        next
      end
      my_bits = (mc_bits[addr] & mask) >> start
      mcfile.puts "@%03X // #{locations[addr]}" % addr if locations[addr]
      bit_string = ("%0#{length}b" % my_bits).gsub(/(\d)(?=(\d\d\d\d\d\d\d\d)+(?!\d))/, "\\1_")
      mcfile.puts "#{bit_string} // #{mc_descs[addr]}" % addr
    end
  end
end

# output any required mapping files for debugging purposes
mapfiles.each do |file_info|
  last_instruction = ""
  last_instruction_baseaddr = 0
  filename = file_info[:filename]
  File.open(filename, 'w') do |mapfile|
    mc_bits.each_index do |addr|
      next if !mc_bits[addr]
      if(locations[addr]) then
        last_instruction = locations[addr] 
        last_instruction_baseaddr = addr
      end
      mapfile.puts "#{addr.to_s(16).upcase.rjust(2, "0")} #{last_instruction}-#{addr-last_instruction_baseaddr}"
    end
  end
end