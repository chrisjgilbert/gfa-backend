class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.text :content
      t.integer :gluten_free_range
      t.integer :value
      t.integer :service

      t.timestamps
    end
  end
end
