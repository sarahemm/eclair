require_relative 'fielddecode-nextaddr.rb'
require_relative 'fielddecode-rptznext.rb'
require_relative 'fielddecode-enum.rb'
require_relative 'fielddecode-basic.rb'

class FieldDecodes
  def initialize
    @decodes = [
      FieldDecodeNextAddr.new,
      FieldDecodeRptzNext.new,
      FieldDecodeEnum.new,
      FieldDecodeBasic.new
    ]
  end

  def decode(field: nil, value: nil, addr: nil)
    @decodes.each do |decode|
      decoded_value = decode.decode field: field, value: value, addr: addr
      return decoded_value unless decoded_value == nil
    end

    raise ArgumentError, "All field decoders failed to handle field '#{field}' with value '#{value}'."
  end
end