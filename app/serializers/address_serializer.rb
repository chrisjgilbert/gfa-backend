class AddressSerializer
  include FastJsonapi::ObjectSerializer
  set_key_transform :camel_lower
  attributes :building_number, :first_line, :post_code, :city, :country
end
