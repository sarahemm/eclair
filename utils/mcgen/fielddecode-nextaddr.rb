class FieldDecodeNextAddr
  def decode(field: nil, value: nil, addr: nil)
    return nil unless field == 'next_addr'

    locations = Locations.instance

    # next_addr values are actually locations to jump to, so find that
    case value
      when 'ir'
        return 0
      when '-2'
        return addr - 2
      when '-1'
        return addr - 1
      when '0'
        return addr
      when '+1'
        return addr + 1
      when '+2'
        return addr + 2
      else
        location = locations[value]
        raise ArgumentError, "No such next_addr '#{value}'" unless location

        return location.address
    end
  end
end