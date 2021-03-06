class Eatery < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  has_and_belongs_to_many :cuisines
  has_one :address
  has_many :reviews
  geocoded_by :post_code
  after_validation :geocode
  accepts_nested_attributes_for :address
  delegate :post_code, to: :address

  def reviews_count
    reviews.count
  end  

  def average_rating
    return 0 unless reviews_count.positive?
    reviews.sum(&:rating) / reviews_count
  end
end
