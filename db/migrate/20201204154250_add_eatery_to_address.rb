class AddEateryToAddress < ActiveRecord::Migration[6.0]
  def change
    add_reference :addresses, :eatery, null: false, foreign_key: true
  end
end