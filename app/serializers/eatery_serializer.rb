class EaterySerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :name, :type
  has_many :cuisines
  has_one :address
end
