class EaterySerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :name, :type

  attribute :cuisines do |eatery|
    CuisineSerializer.new(eatery.cuisines)
  end

  attribute :address do |eatery|
    AddressSerializer.new(eatery.address)
  end

  attribute :reviews do |eatery|
    ReviewSerializer.new(eatery.reviews)
  end
end
