class AddressSerializer
  include FastJsonapi::ObjectSerializer
  attributes :building, :post_code, :city, :country
end
