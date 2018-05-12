#!/opt/local/bin/ruby2.0
# mcgen - generate microcode binary output based on a text input file

files = []
images = []
mapfiles = []
graphfiles = []
completefiles = []
@fields = {}
@enums = {}
@locations = []
instructions = {}

def_lines = Array.new
# read in the microcode text file and put it into an array
File.open(ARGV[0], "r") do |infile|
  def_lines += infile.readlines
end

# go through the array and handle any includes
basedir = File.dirname(ARGV[0])
def_lines.each_index do |line_index|
  line = def_lines[line_index]
  next if !matches = /^include\s+(.*)/.match(line)
  file = matches[1]
  File.open("#{basedir}/#{file}", "r") do |incfile|
    def_lines[line_index] = incfile.readlines
  end
end

def_lines.flatten!

# process the microcode definition and fill a bunch of arrays with the info we'll need
def_lines.each do |line|
  line.gsub! /#.*/, ""
  values = line.split(/\s+/)
  next if values[0] == nil
  case values.shift
    when "file" then
      # files specify an output binary-text file and which bits go into it
      filename = values.shift
      start_bit = values.shift.to_i
      nbr_bits = values.shift.to_i
      files.push :filename => filename, :start => start_bit, :length => nbr_bits
    when "image" then
      # images specify an output true-binary file and which bits go into it
      filename = values.shift
      start_bit = values.shift.to_i
      nbr_bits = values.shift.to_i
      images.push :filename => filename, :start => start_bit, :length => nbr_bits
    when "mapfile" then
      # mapfiles specify an output file for mapping address to instruction (for gtkwave or similar)
      filename = values.shift
      mapfiles.push :filename => filename
    when "graphfile" then
      # graphfiles specify an output file for digraph documentation
      filename = values.shift
      graphfiles.push :filename => filename
    when "completefile" then
      # completefiles specify an output file of the entire definition including all includes
      filename = values.shift
      completefiles.push :filename => filename
    when "field" then
      # fields specify a name for a bit or series of bits in the microcode
      field = values.shift
      start_addr = values.shift.to_i
      end_addr = start_addr + values.shift.to_i - 1
      @fields[field] = (start_addr..end_addr)
    when "enum" then
      # enums specify a name for a bit or combination of bits used in a field
      field = values.shift
      name = values.shift
      value = values.shift.to_i
      @enums[field] = {} if !@enums[field]
      @enums[field][name] = value
    when "location" then
      # locations specify where instructions start in microcode
      instruction = values.shift
      start_addr = values.shift.to_i
      if(@locations[start_addr]) then
        raise "Location #{start_addr} already in use by '#{@locations[start_addr]}', can't use it for '#{instruction}'"
      end
      @locations[start_addr] = instruction
    when "instruction" then
      # instructions list which values need to be set for each row of an instruction
      instruction = values.shift
      instructions[instruction] = [] if !instructions[instruction]
      instructions[instruction] << values
    when "alias" then
      # we don't do anything with aliases, other tools use them
    else
      raise "Unknown field type."
  end
end

# given the name of an instruction, the address it's at, and a list of fields, generate a microcode word
# returns a two element array with the word and a text description of the contents
def gen_mc_word(instruction, addr, ins_fields, next_addr_override = nil)
  next_addr = nil;
  rptz_next_addr = nil;
  desc = "";
  bits = 0
  ins_fields.each do |ins_field|
    field_name, enum_name = ins_field.match(/([^\(]+)\(?([^\)]*)\)?/).captures
    if(field_name == "next_addr") then
      next if next_addr_override != nil
      if(enum_name == "ir") then
        desc = "next: ir #{desc}"
        next_addr = 0
        next
      elsif(enum_name == "self") then
        desc = "next: self #{desc}"
        next_addr = addr
        next
      elsif(enum_name[0] == "-")
        nbr = enum_name[1..-1].to_i
        desc = "next: -#{nbr} #{desc}"
        next_addr = addr - nbr
        next
      elsif(enum_name[0] == "+")
        nbr = enum_name[1..-1].to_i
        desc = "next: +#{nbr} #{desc}"
        next_addr = addr + nbr
        next
      end
      loc_addr = @locations.find_index(enum_name)
      next_addr = loc_addr
      desc = "next: 0x#{loc_addr.to_s(16)}(#{enum_name}) #{desc}"
      next
    end
    if(field_name == "rptz_next_addr") then
      rptz_next_addr = @locations.find_index(enum_name)
      # rptz_next_addr can only jump within the same 16-instruction block
      if(rptz_next_addr.to_s(2)[0..-5] != next_addr.to_s(2)[0..-5]) then
        raise "RPTZ Next Addr can only jump within the same 16-instruction block, realignment required in instruction #{instruction} (#{rptz_next_addr.to_s(2)} vs #{next_addr.to_s(2)})"
      elsif(rptz_next_addr == next_addr) then
        raise("RPTZ Next Addr does not allow jumping to self in #{instruction}")
      end
      desc = "rptz_next: 0x#{rptz_next_addr.to_s(16)}(#{enum_name}) #{desc}"
      rptz_next_addr &= 0xF
      next
    end
    raise "Invalid field '#{field_name}' in instruction '#{instruction}'" if !@fields[field_name]
    # find out if there are enums for this field, and make sure they're valid and used if so
    raise "Enum expected for field '#{field_name}' in instruction #{instruction}" if @enums[field_name] and enum_name == ""
    raise "No enum expected for field #{field_name} in instruction #{instruction}" if enum_name != "" and !@enums[field_name]
    raise "Invalid enum '#{enum_name}' given for field '#{field_name}' in instruction #{instruction}" if enum_name != "" and !@enums[field_name][enum_name]
    # TODO: check that we don't overflow the length of the field
    # if no enum used, then specifying the field means we want it as a 1
    bit_val = 1
    bit_val = @enums[field_name][enum_name] if @enums[field_name]
    bits |= bit_val << @fields[field_name].begin
    desc += "#{field_name}(#{enum_name}) " if enum_name != ""
    desc += "#{field_name} " if enum_name == ""
  end
  if(next_addr_override) then
    next_addr = next_addr_override
    desc = "next: 0x#{next_addr_override.to_s(16)} #{desc}"
  else
    next_addr = addr + 1 if next_addr == nil
  end
  rptz_next_addr = 0 if !rptz_next_addr
  bits |= next_addr << @fields["next_addr"].begin
  bits |= rptz_next_addr << @fields["rptz_next_addr"].begin
  return [bits, desc]
end

# generate the actual array of bits for the output
# FIXME: right now we assume the last start_addr + 4 is the end, shouldn't do this
mc_bits = []
mc_descs = []
(0..@locations.length+4).each do |addr|
  instruction = @locations[addr]
  next if !instruction
  if(!instructions.include? instruction) then
    raise "No definition found for instruction #{instruction} at address #{addr}"
  end
  instructions[instruction].each do |ins_fields|
    raise "#{instruction} overlaps with previous instruction at address 0x%03X" % addr if mc_bits[addr]
    mc_bits[addr] = 0
    if(include_data = ins_fields[0].match(/include\(([^)]+)\)/)) then
      # include another instruction's words in this one (used for things like call = push16.pc + jmp)
      (include_instruction, options) = include_data.captures[0].split(",")
      instructions[include_instruction].each do |include_ins_fields|
        if(options == "no_next") then
          # the 'no_next' option means to force all next_addrs to the literal next address
          # this lets us chain includes of instructions that normally jump back to fetch or the like
          # TODO: optimize out any words that end up /only/ nexting to the literal next address
          (mc_bits[addr], mc_descs[addr]) = gen_mc_word(include_instruction, addr, include_ins_fields, addr+1)
        else
          (mc_bits[addr], mc_descs[addr]) = gen_mc_word(include_instruction, addr, include_ins_fields)          
        end
        mc_descs[addr] = "include(#{include_instruction}) #{mc_descs[addr]}"
        addr += 1
      end
    else
      (mc_bits[addr], mc_descs[addr]) = gen_mc_word(instruction, addr, ins_fields)
      addr += 1      
    end
  end
end

# assemble the arrays of bits into whatever combination of binary-text files the input file requests
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
      mcfile.puts "@%03X // #{@locations[addr]}" % addr if @locations[addr]
      bit_string = ("%0#{length}b" % my_bits).gsub(/(\d)(?=(\d\d\d\d\d\d\d\d)+(?!\d))/, "\\1_")
      mcfile.puts "#{bit_string} // #{mc_descs[addr]}" % addr
    end
  end
end

# assemble the arrays of bits into whatever combination of true-binary image files the input file requests
images.each do |image_info|
  filename = image_info[:filename]
  start = image_info[:start]
  length = image_info[:length]
  mask = (2 ** length) - 1 << start
  File.open(filename, 'w') do |mcimage|
    mc_bits.each_index do |addr|
      if(!mc_bits[addr]) then
        my_bits = 0x0000000000000000
      else
        my_bits = (mc_bits[addr] & mask) >> start
      end
      (0..length-1).step(8).each do |bit_pos_start|
        mcimage.write (my_bits >> bit_pos_start & 0xFF).chr
      end
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
      if(@locations[addr]) then
        last_instruction = @locations[addr] 
        last_instruction_baseaddr = addr
      end
      mapfile.puts "#{addr.to_s(16).upcase.rjust(2, "0")} #{last_instruction}-#{addr-last_instruction_baseaddr}"
    end
  end
end

# output any required mapping files for debugging purposes
completefiles.each do |file_info|
  filename = file_info[:filename]
  File.open(filename, 'w') do |completefile|
    completefile.write def_lines.join("")
  end
end

# output any required documentation files
Kernel.exit(0) if !graphfiles
require 'graphviz'

class GraphViz
  def search_node_startswith(search_string)
    @hoNodes.each do |name, val|
      return name if name.start_with? search_string
    end
  end
end

# TODO: make this support includes
graphfiles.each do |file_info|
  graph = GraphViz::new(:G, :type => :digraph)
  # first build all the nodes (and edges from IR to the instruction start points)
  ir_node = graph.add_node "IR"
  ir_node[:shape] = "circle"
  instructions.each do |instruction, words|
    addr = @locations.find_index(instruction)
    first_addr = addr
    words.each do |word_bits|
      node = graph.add_node "0x#{sprintf("%02X", addr)}\n#{instruction}"
      node[:xlabel] = word_bits.join("\n")
      node[:fontsize] = 6
      node[:shape] = "circle"
      node[:margin] = "0.05,0.055"
      addr += 1
    end
    unless /fetch\d*|init\d*/.match(instruction) or instruction.end_with? "?" then
      graph.add_edge ir_node, graph.get_node("0x#{sprintf("%02X", first_addr)}\n#{instruction}") 
    end
  end
  # now go through again and build all the edges
  instructions.each do |instruction, words|
    addr = @locations.find_index(instruction)
    words.each do |word_bits|
      next_addr = addr + 1
      word_bits.each do |word_bit|
        next_addr_match = /next_addr\(([^\)]+)\)/.match(word_bit)
        next if !next_addr_match
        next_instruction = next_addr_match[1]
        if(next_instruction == "ir") then
          next_addr = "ir"
        elsif(next_instruction == "self") then
          next_addr = addr
        elsif(next_instruction[0] == "-") then
          next_addr = addr - next_instruction[0][1..-1]
        elsif(next_instruction[0] == "+") then
          next_addr = addr + next_instruction[0][1..-1]
        else
          next_addr = @locations.find_index(next_instruction)
        end
      end
      from_node = graph.get_node(graph.search_node_startswith("0x#{sprintf("%02X", addr)}"))
      to_node = nil
      if next_addr == "ir"
        to_node = ir_node
      else
        to_node = graph.get_node(graph.search_node_startswith("0x#{sprintf("%02X", next_addr)}"))
      end
      next if !to_node
      
      graph.add_edge from_node, to_node
      addr = next_addr
    end
  end

  graph.output :pdf => file_info[:filename]
end
