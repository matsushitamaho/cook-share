class CreateRecipes < ActiveRecord::Migration[7.0]
  def change
    create_table :recipes do |t|
      t.integer :customer_id, null: false
      t.string :name,         null: false
      t.time :time,           null: false
      t.text :material,       null: false
      t.text :make,           null: false
      t.timestamps
    end
  end
end
