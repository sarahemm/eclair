#!/usr/bin/ruby
# mcgen - generate microcode binary output based on a text input file

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
(0..locations.length+4).each do |addr|
  instruction = locations[addr]
  next if !instruction
  puts "@%03d" % addr
  instructions[instruction].each do |data|
    mc_bits[addr] = 0;
    description = "";
    data.each do |field|
      field_name, enum_name = field.match(/([^\(]+)\(?([^\)]*)\)?/).captures
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
      description += "#{field_name}(#{enum_name})\t" if enum_name != ""
      description += "#{field_name}\t" if enum_name == ""
    end
    bit_string = ("%064b" % mc_bits[addr]).gsub(/(\d)(?=(\d\d\d\d\d\d\d\d)+(?!\d))/, "\\1_")
    puts "#{bit_string} // #{description}" % addr
    addr += 1
  end
end
