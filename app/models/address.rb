class Address < ApplicationRecord
  belongs_to :eatery

  def pretty_print
    [building, city, post_code].compact.join(', ')
  end
end
