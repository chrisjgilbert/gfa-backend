class Eatery < ApplicationRecord
  has_and_belongs_to_many :cuisines
end
