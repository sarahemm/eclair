require 'singleton'

# Locations define what address a specific instruction starts at
class Location
  attr_accessor :instruction, :address

  def initialize(instruction: nil, address: nil)
    @instruction = instruction
    @address = address
  end
end

class Locations
  include Singleton

  def initialize
    @locations = Array.new
  end
  
  def [](key)
    @locations.each do |location|
      return location if location.instruction == key
    end
    nil
  end
  
  def each
    @locations.each do |location|
      yield location
    end
  end
  
  def parse(line)
    if(location_matches = /^\s*location\s*(\S+)\s*(\d+)/.match(line)) then
      @locations.push Location.new(
        instruction: location_matches[1],
        address: location_matches[2].to_i
      )
      return @locations.last
    end
    nil
  end
end