require 'singleton'

# Layout holds a collection of Layout::Address objects, organized by address
class Layout
  include Singleton

  def initialize
    @addresses = []
  end

  def [](address)
    @addresses[address]
  end

  def build_layout
    Routines.instance.each do |name, routine|
      (0..routine.length-1).each do |index|
        this_address = routine.base_address + index
        raise ArgumentError, "Overlap between #{name}-#{index} and #{addresses[this_address].routine.name}-#{addresses[this_address].routine_index}." if @addresses[this_address]

        @addresses[this_address] = Address.new(
          address: this_address,
          routine: routine,
          routine_index: index
        )
      end
    end
  end

  def length
    @addresses.length
  end

  def parse(line)
    # layouts aren't parsed from an input file, so do nothing
  end

  # each Address defines what microcode Routine and what index within that
  # Routine resides at a specific address
  class Address
    attr_accessor :address, :routine, :routine_index

    def initialize(address: nil, routine: nil, routine_index: nil)
      @address = address
      @routine = routine
      @routine_index = routine_index
    end
  end
end
