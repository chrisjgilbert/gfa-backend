class EaterySerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :name, :type

  attribute :cuisines do |obj|
    CuisineSerializer.new(obj.cuisines)
  end

  attribute :address do |obj|
    AddressSerializer.new(obj.address)
  end
end
