class Public::RecipesController < ApplicationController
  before_action :authenticate_customer!, only:  [:new, :edit, :create, :update, :destroy]
  before_action :correct_user, only: [:edit, :update]

  def index
    #カテゴリ検索して見つかった場合、レシピ一覧に9つずつ表示
    if params[:tag_id].present?
      tag = Tag.find(params[:tag_id])
      @recipes = tag.recipes.page(params[:page]).per(9).order(created_at: :desc)
    else
    #普通にレシピ一覧を表示する
      @recipes = Recipe.page(params[:page]).per(9).order(created_at: :desc)
    end
  end

  def new
    @recipe = Recipe.new
  end

  def show
    @recipe = Recipe.find(params[:id])
  end

  def edit
    if current_customer
      @recipe = Recipe.find(params[:id])
    end
  end

  def create
    @recipe = Recipe.new(recipe_params)
    @recipe.customer_id = current_customer.id
    if @recipe.save
      flash[:success] = "投稿しました！"
      redirect_to recipe_path(@recipe.id)
    else
      render :new
    end
  end

  def update
    @recipe = Recipe.find(params[:id])
    if @recipe.update(recipe_params)
      flash[:success] = "更新しました！"
      redirect_to recipe_path(@recipe.id)
    else
      render :edit
    end
  end

  def destroy
    @recipe = Recipe.find(params[:id])
    @recipe.destroy
    redirect_to recipes_path
  end

  def search
    @recipes = Recipe.where('name LIKE ?', "%#{params[:query]}%")
    render 'search_result'
  end

  private

  def recipe_params
    params.require(:recipe).permit(:image, :name, :time, :material, :make, tag_ids: [])
  end
  
  def correct_user
    @recipe = Recipe.find(params[:id])
    @customer = @recipe.customer_id
    redirect_to(recipes_path) unless @customer == current_customer
  end
end
