class Admin::CustomersController < ApplicationController
  def index
    @customer = Customer.page(params[:page]).per(10)
  end

  def show
    @customer = Customer.find(params[:id])
  end

  def edit
    @customer = Customer.find(params[:id])
  end

  def update
    @customer = Customer.find(params[:id])
    if @customer.update(customer_params)
      redirect_to admin_customer_path(@customer.id)
    else
      render :edit
    end
  end

  private

  def customer_params
    params.require(:customer).permit(:last_name, :first_name, :email)
  end
end
