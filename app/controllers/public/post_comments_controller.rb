class Public::PostCommentsController < ApplicationController
  before_action :authenticate_customer!, only: [:new]
  
  def new
    @post_comment = PostComment.new
    @recipe = Recipe.find(params[:recipe_id])
  end

  def create
    recipe = Recipe.find(params[:recipe_id])
    comment = recipe.post_comments.new(post_comment_params)
    comment.customer = current_customer
    comment.save
    flash[:success] = "コメントしました！"
    redirect_to recipe_path(recipe)
  end


  def destroy
    comment = PostComment.find_by(id: params[:id])
    if comment
      comment.destroy
      flash[:success] = "コメントを消去しました。"
      redirect_to request.referer
    else
      redirect_to recipe_path(recipe)
    end
  end

  private

  def post_comment_params
    params.require(:post_comment).permit(:comment)
  end
end
