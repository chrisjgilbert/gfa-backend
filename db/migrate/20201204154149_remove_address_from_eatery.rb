class RemoveAddressFromEatery < ActiveRecord::Migration[6.0]
  def change
    remove_column :eateries, :address_id
  end
end
