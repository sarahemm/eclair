# OutputFile is any kind of file we're generating
class OutputFile
  attr_accessor :filename

  def initialize(filename: nil)
    @filename = filename
  end

  def write_file
    layout = Layout.instance
    outfile = File.open(@filename, 'w')

    (0..@length - 1).each do |addr|
      if(layout[addr]) then
        instruction = layout[addr].routine[layout[addr].routine_index]
        yield outfile, addr, layout[addr].routine, instruction
      else
        yield outfile, addr, nil, nil
      end
    end

    outfile.close
  end
end

# TODO: properly support partial-width
# OutputAsciiBitstreams are streams of bits that we're generating
# in ascii 1 and 0s (for the sim)
class OutputAsciiBitstream < OutputFile
  attr_accessor :first_bit, :width, :length

  def initialize(filename: nil, first_bit: nil, width: nil, length: nil)
    super filename: filename
    @first_bit = first_bit
    @width = width
    @length = length
  end

  def write_file
    puts "Writing ASCII bitstream file #{@filename}..."

    last_addr = -1
    last_inst = nil
    super do |file, addr, routine, instruction|
      if instruction
        # TODO: don't print addresses on every line, only need them for discontinuities

        if(last_addr != addr - 1 || last_inst != routine.name) then
          # address discontinuity, print the new address
          file.printf "@%03X // %s\n", addr, routine.name
        end
        last_addr = addr
        last_inst = routine.name
        file.puts instruction.to_s(addr: addr)
      else
        file.printf "@%03X // no microcode at this address\n", addr
      end
    end
  end
end

# OutputBinaryBitstreams are streams of bits that we're generating
# in actual binary (for ROMs or the functional simulator)
class OutputBinaryBitstream < OutputFile
  attr_accessor :first_bit, :width, :length

  def initialize(filename: nil, first_bit: nil, width: nil, length: nil)
    super filename: filename
    @first_bit = first_bit
    @width = width
    @length = length
  end

  def write_file
    puts "Writing binary bitstream file #{@filename}..."

    super do |file, addr, routine, instruction|
      bit_mask = (2**@width) - 1 << @first_bit
      instruction_bits = instruction ? (instruction.to_i(addr: addr) & bit_mask) >> @first_bit : 0
      (0..@width - 1).step(8).each do |bit_pos_start|
        file.write (instruction_bits >> bit_pos_start & 0xFF).chr
      end
    end
  end
end

# MapFiles are lists of which instruction are at which addr (used by gtkwave
# and other debugging tools)
class MapFile < OutputFile
  attr_accessor :length

  def initialize(filename: nil, length: nil)
    super :filename => filename
    @length = length
  end

  def write_file
    puts "Writing address map file #{filename}..."
    layout = Layout.instance

    outfile = File.open(@filename, 'w')

    (0..@length - 1).each do |addr|
      next unless layout[addr]

      if layout[addr].routine_index == 0
        outfile.printf "%03X %s\n", addr, layout[addr].routine.name
      else
        outfile.printf "%03X %s-%d\n", addr, layout[addr].routine.name, layout[addr].routine_index
      end
    end

    outfile.close
  end
end

class OutputFiles
  attr_accessor :output_files

  def initialize
    @output_files = Array.new
  end

  def each
    @output_files.each do |file|
      yield file
    end
  end

  def parse(line)
    params = line.split(/\s+/)
    case params[0]
      when 'file'
        # ascii-binary output file
        filename = params[1]
        first_bit = params[2].to_i
        width = params[3].to_i
        length = params[4].to_i
        @output_files.push OutputAsciiBitstream.new(
          :filename => filename,
          :first_bit => first_bit,
          :width => width,
          :length => length
        )
        return @output_files.last
      when 'image'
        # raw binary output file
        filename = params[1]
        first_bit = params[2].to_i
        width = params[3].to_i
        length = params[4].to_i
        @output_files.push OutputBinaryBitstream.new(
          :filename => filename,
          :first_bit => first_bit,
          :width => width,
          :length => length
        )
        return @output_files.last
      when 'mapfile'
        filename = params[1]
        length = params[2].to_i
        @output_files.push MapFile.new(
          :filename => filename,
          :length => length
        )
        return @output_files.last
    end
    nil
  end
end
