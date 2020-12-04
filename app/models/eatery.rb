class Eatery < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  has_and_belongs_to_many :cuisines
  has_one :address
end
