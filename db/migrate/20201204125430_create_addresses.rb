class CreateAddresses < ActiveRecord::Migration[6.0]
  def change
    create_table :addresses do |t|
      t.string :building
      t.string :first_line
      t.string :second_line
      t.string :city
      t.string :post_code
      t.string :county
      t.string :country

      t.timestamps
    end
  end
end
