class ChangeDataTimeToRecipes < ActiveRecord::Migration[7.0]
  def change
    change_column :recipes, :time, :string
  end
end
