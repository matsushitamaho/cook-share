class Public::HomesController < ApplicationController
 def top
  @recipes = Recipe.left_joins(:favorites).group(:id).order("count(favorites.recipe_id) desc").limit(3)
 end

  def about
  end
end
