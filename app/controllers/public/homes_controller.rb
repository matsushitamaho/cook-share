class Public::HomesController < ApplicationController
 def top
  @recipes = Recipe.includes(:favorited_customers)
                   .sort_by { |recipe| -recipe.favorited_customers.size }
                   .take(3)
 end

  def about
  end
end
