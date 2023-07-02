class CreateFavorites < ActiveRecord::Migration[7.0]
  def change
    create_table :favorites do |t|
      t.integer :customer_id, null: false
      t.integer :recipe_id,   null: false
      t.timestamps
    end
  end
end
