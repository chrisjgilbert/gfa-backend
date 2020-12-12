class AddLatitudeAndLongitudeToEatery < ActiveRecord::Migration[6.0]
  def change
    add_column :eateries, :latitude, :float
    add_column :eateries, :longitude, :float
  end
end
