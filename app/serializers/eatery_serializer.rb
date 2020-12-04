class EaterySerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :name, :type, :reviews_count, :average_rating

  attribute :cuisines do |eatery|
    eatery.cuisines.map { |cuisine| { id: cuisine.id, name: cuisine.name } }
  end

  attribute :address do |eatery|
    eatery.address.pretty_print
  end
end
