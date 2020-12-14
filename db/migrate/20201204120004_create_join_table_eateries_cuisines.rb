class CreateJoinTableEateriesCuisines < ActiveRecord::Migration[6.0]
  def change
    create_join_table :eateries, :cuisines do |t|
      t.index [:eatery_id, :cuisine_id]
      t.index [:cuisine_id, :eatery_id]
    end
  end
end
