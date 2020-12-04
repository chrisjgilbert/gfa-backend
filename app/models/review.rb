class Review < ApplicationRecord
  belongs_to :eatery

  def rating
    ratings = [gluten_free_range, value, service]
    (ratings.reduce(:+) / ratings.size.to_f).round(1)
  end
end
