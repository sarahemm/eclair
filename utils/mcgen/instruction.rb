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
    @instruction_specs.each do |_field_name, spec|
      value |= spec.raw_value(addr: addr) << spec.field.first_bit
    end

    unless @instruction_specs['next_addr']
      # if a next address isn't specified, use addr+1
      fields = Fields.instance
      value |= (addr + 1) << fields['next_addr'].first_bit
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
    @instruction_specs.each do |_field_name, spec|
      comments += "#{spec} "
    end
    "#{bits} // #{comments.strip}"
  end

  # parse a line of text and return an array of instruction specs
  def parse(line)
    params = line.split(/\s+/)
    return nil unless params[0] == 'instruction'

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

        specs[spec] = InstructionSpec.new(field: fields[spec])
      end
    end

    specs
  end
end
