class Public::RecipesController < ApplicationController
  before_action :authenticate_customer!, only:  [:new, :edit, :create, :update]

  def index
  end

  def new
    @recipe = Recipe.new
  end

  def show
  end

  def edit
  end

  def create
    @recipe = Recipe.new(recipe_params)
  end

  def update
  end

  private

  def recipe_params
    params.require(:recipe).permit(:name, :time, :material, :make)
  end
end
