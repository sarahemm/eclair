require 'singleton'

# Instructions define a series of fields/enums that make up one microcode word
class Instruction
  attr_accessor :instruction_specs

  def initialize(line = nil)
    @instruction_specs = parse(line)
  end

  # turn the Instruction into its numeric representation
  def to_i(addr: nil)
    value = 0

    @instruction_specs.each do |field_name, spec|
      value |= spec.raw_value(addr: addr) << spec.field.first_bit
    end

    unless @instruction_specs['next_addr']
      # if a next address isn't specified, use addr+1
      #puts value.to_s(2).rjust(64, '0')
      fields = Fields.instance
      value |= (addr + 1) << fields['next_addr'].first_bit
      #puts value.to_s(2).rjust(64, '0')
    end

    value
  end

  # turn the Instruction into a textual representation
  # (i.e. binary bits followed by a comment of the definition
  # that generated those bits)
  def to_s(addr: nil)
    value = to_i(addr: addr)
    # TODO: don't fix the length at 64
    length = 64
    bits = ("%0#{length}b" % value).gsub(/(\d)(?=(\d\d\d\d\d\d\d\d)+(?!\d))/, '\\1_')
    comments = ''
    @instruction_specs.each do |field_name, spec|
      comments += "#{spec} "
    end
    "#{bits} // #{comments.strip}"
  end

  # parse a line of text and return an array of instruction specs
  def parse(line)
    params = line.split(/\s+/)
    return nil unless params[0] == 'instruction'

    instruction = params[1]
    spec_defs = params[2..-1]
    specs = parse_specs(spec_defs)

    specs
  end

  def parse_specs(spec_defs)
    fields = Fields.instance

    specs = {}
    spec_defs.each do |spec|
      if spec_matches = /([^\(]+)\(([^\)]+)\)/.match(spec)
        # field with a specific enum value
        field = fields[spec_matches[1]]
        raise ArgumentError, "No such field #{spec_matches[1]} (in instruction #{instruction})" unless field

        specs[field.name] = InstructionSpec.new(
          field: field,
          value: spec_matches[2]
        )
      else
        # field that's just set to 1
        raise ArgumentError, "No such field #{spec} (in instruction @instruction)" unless fields[spec]

        specs[spec] = InstructionSpec.new(
            field: fields[spec]
        )
      end
    end

    specs
  end
end

# InstructionSpecs define one specific field/value, many of which make up one Instruction
class InstructionSpec
  attr_accessor :field, :value

  def initialize(field: nil, value: nil)
    @field = field
    @value = value
  end

  def to_s
    if @value
      "#{@field.name}(#{@value})"
    else
      @field.name
    end
  end

  def raw_value(addr: nil)
    @locations = Locations.instance

    enums = Enums.instance

    # TODO: clean this up
    if @field.name == 'next_addr'
      # next_addr values are actually locations to jump to, so find that
      case @value
        when 'ir'
          return 0
        when '-1'
          return addr - 1
        when '0'
          return addr
        when '+1'
          return addr + 1
        when '+2'
          return addr + 2
      else
          location = @locations[@value]
          raise ArgumentError, "No such next_addr '#{@value}'" unless location

          return location.address
      end
    elsif @field.name == 'rptz_next_addr'
        # rptz_next_addr values are actually locations to jump to, so find that
        # also these only use the least significant 5 bits
        # FIXME: move this somewhere that makes more sense and add alignment checking
      case @value
        when 'ir'
          return 0
        when '-1'
          return (addr - 1) & 0x0F
        when '0'
          return addr & 0x0F
        when '+1'
          return (addr + 1) & 0x0F
        when '+2'
          return (addr + 2) & 0x0F
        else
          location = @locations[@value]
          raise ArgumentError, "No such rptz_next_addr '#{@value}'" unless location

          return location.address & 0x0F
        end
    elsif @value
      # enum-based settable-value field, figure out the numeric value
      enum_value = enums[@field.name][@value]
      raise ArgumentError, "No such enum value '#{@value}' for field '#{@field.name}'" unless enum_value

      return enum_value
    else
      # plain "set this bit if the spec is included" type, so set the bit
      raise ArgumentError, 'No value included for multi-bit field' if @field.length > 1

      return 1
    end
  end
end