class AddEateryToReviews < ActiveRecord::Migration[6.0]
  def change
    add_reference :reviews, :eatery, null: false, foreign_key: true
  end
end
