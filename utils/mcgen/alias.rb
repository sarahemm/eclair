# Aliases define an alternate name for an instruction
class Alias
  attr_accessor :name, :instruction

  def initialize(name: nil, instruction: nil)
    @name = name
    @instruction = instruction
  end
end

class Aliases
  def initialize
    @aliases = Array.new
  end

  def parse(line)
    params = line.split(/\s+/)
    return nil unless params[0] == 'alias'

    @aliases.push Alias.new(
      name: params[1],
      instruction: params[2]
    )
    return @aliases.last
  end
end
