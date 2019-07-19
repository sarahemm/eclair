class FieldDecodeEnum
  def decode(field: nil, value: nil, addr: nil)
    return Enums.instance[field][value]
  end
end