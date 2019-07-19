require 'singleton'

# Enums define a name for a specific value in a specific bit position
# or series of contiguous bit positions
class Enum
  attr_accessor :field, :name, :value

  def initialize(field: nil, name: nil, value: nil)
    @field = field
    @name = name
    @value = value
  end
end

class Enums
  include Singleton

  def initialize
    @enums = []
  end

  def [](field)
    matches = {}
    @enums.each do |enum|
      next unless enum.field == field

      matches[enum.name] = enum.value
    end
    matches
  end

  def parse(line)
    params = line.split(/\s+/)
    return nil unless params[0] == 'enum'

    @enums.push Enum.new(
      field: params[1],
      name: params[2],
      value: params[3].to_i
    )

    @enums.last
  end
end
