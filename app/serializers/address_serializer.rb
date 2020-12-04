class AddressSerializer
  include FastJsonapi::ObjectSerializer
  set_key_transform :camel_lower
  attributes :building, :post_code, :city, :country
end
