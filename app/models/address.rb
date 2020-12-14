class Address < ApplicationRecord
  belongs_to :eatery

  def pretty_print
    [building_number, first_line, city, post_code].compact.join(', ')
  end
end
