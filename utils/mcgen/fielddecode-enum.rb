class FieldDecodeEnum
  def decode(field: nil, value: nil, addr: nil)
    Enums.instance[field][value]
  end
end