class AddressSerializer
  include FastJsonapi::ObjectSerializer
  attributes :post_code, :city, :country
end
