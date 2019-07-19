class FieldDecodeRptzNext
  def decode(field: nil, value: nil, addr: nil)
    return nil unless field == 'rptz_next_addr'

    locations = Locations.instance

    # rptz_next_addr values are actually locations to jump to, so find that
    # also these only use the least significant 5 bits
    # FIXME: add alignment checking
    case value
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
        location = locations[value]
        raise ArgumentError, "No such rptz_next_addr '#{value}'" unless location

        return location.address & 0x0F
    end
  end
end