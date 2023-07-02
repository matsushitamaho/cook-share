class CreatePostComments < ActiveRecord::Migration[7.0]
  def change
    create_table :post_comments do |t|
      t.text :comment,        null: false
      t.integer :customer_id, null: false
      t.integer :recipe_id,   null: false
      t.timestamps
    end
  end
end
