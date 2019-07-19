# rptz_next_addr values are actually locations to jump to, so find that
class FieldDecodeRptzNext
  def decode(field: nil, value: nil, addr: nil)
    return nil unless field == 'rptz_next_addr'

    locations = Locations.instance
    rptz_next_addr = nil

    rptz_next_addr = case value
      when 'ir'
        0
      when '-1'
        (addr - 1)
      when '0'
        addr & 0x0F
      when '+1'
        (addr + 1)
      when '+2'
        (addr + 2)
      else
        location = locations[value]
        raise ArgumentError, "No such rptz_next_addr '#{value}'" unless location

        location.address
      end

    # rptz_next_addr can only jump within the same 16-instruction block
    # make sure this new address falls within that
    if rptz_next_addr.to_s(2)[0..-5] != addr.to_s(2)[0..-5]
      raise ArgumentError, "RPTZ Next Addr can only jump within the same 16-instruction block, realignment required (#{value}/#{rptz_next_addr.to_s(2).rjust(9, '0')} vs #{addr.to_s(2).rjust(9, '0')})"
    end

    # rptz_next_addr only uses the least significant 4 bits
    rptz_next_addr & 0xF
  end
end