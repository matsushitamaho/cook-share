class Public::CustomersController < ApplicationController
  def show
    @customer = current_customer
  end

  def edit
    @customer = current_customer
  end

  def favorites
    @customer = current_customer
    favorites = Favorite.where(customer_id: @customer.id).pluck(:recipe_id)
    @favorite_recipes = Recipe.find(favorites)
  end

  def update
    @customer = current_customer
    if @customer.update(customer_params)
      redirect_to customer_path
    else
      render :edit
    end
  end

  def leave
  end

  def withdwaral
    @customer = current_customer
    @customer.update(is_deleted: true)
    reset_session
    redirect_to root_path
  end

  private

  def customer_params
    params.require(:customer).permit(:last_name, :first_name, :email)
  end
end
