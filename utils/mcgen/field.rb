require 'singleton'

# Fields define a name for a bit position or series of contiguous bit positions
class Field
  attr_accessor :name, :first_bit, :length

  def initialize(name: nil, first_bit: nil, length: nil)
    @name = name
    @first_bit = first_bit
    @length = length
  end
end

class Fields
  include Singleton

  def initialize
    @fields = []
  end

  def [](key)
    @fields.each do |field|
      return field if field.name == key
    end
    nil
  end

  def parse(line)
    params = line.split(/\s+/)
    return nil if params[0] != 'field'

    @fields.push Field.new(
      name: params[1],
      first_bit: params[2].to_i,
      length: params[3].to_i
    )

    @fields.last
  end
end
