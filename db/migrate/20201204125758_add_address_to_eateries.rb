# frozen_string_literal: true

class AddAddressToEateries < ActiveRecord::Migration[6.0]
  def change
    add_reference :eateries, :address, null: false, foreign_key: true
  end
end
