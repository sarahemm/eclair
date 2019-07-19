require 'singleton'

# each Routine defines a series of instructions with a common name
class Routine
  attr_accessor :name, :base_address

  def initialize(name: nil, instructions: nil)
    @name = name
    @instructions = instructions
  end

  def add_instruction(instruction)
    @instructions.push instruction
  end

  def length
    @instructions.length
  end

  def [](index)
    @instructions[index]
  end
end

# Routines hold the collection of Routine objects
class Routines
  include Singleton

  def initialize
    @routines = {}
  end

  def [](name)
    @routines[name]
  end

  def each
    @routines.each do |name, routine|
      yield name, routine
    end
  end

  def parse(line)
    params = line.split(/\s+/)
    return nil unless params[0] == 'instruction'

    name = params[1]
    instruction = Instruction.new(line)
    if(@routines[name]) then
      @routines[name].add_instruction instruction
    else
      @routines[name] = Routine.new(name: name, instructions: [instruction])
    end
  end

  def resolve_addresses
    locations = Locations.instance
    @routines.each do |name, routine|
      raise ArgumentError, "No location defined for routine #{name}" unless locations[name]
      routine.base_address = locations[name].address
    end
  end
end
