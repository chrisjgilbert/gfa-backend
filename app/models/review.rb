class Review < ApplicationRecord
  belongs_to :eatery 
  belongs_to :user

  delegate :username, to: :user

  def rating
    ratings = [gluten_free_range, value, service]
    (ratings.reduce(:+) / ratings.size.to_f).round(1)
  end
end
