class AddDescriptionToEateries < ActiveRecord::Migration[6.0]
  def change
    add_column :eateries, :description, :text
  end
end
