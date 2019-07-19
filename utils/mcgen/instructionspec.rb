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
    FieldDecodes.new.decode(field: @field.name, value: @value, addr: addr)
  end
end