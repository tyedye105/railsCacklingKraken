class ProductsController < ApplicationController
  def index
    @user = current_user
    @products = Product.all
  end
  def show
  end
  def new
    @user = current_user
    @product = @user.products.new
  end
  def create
    @user = current_user
    @product = @user.products.new(product_params)
      if @user.save
        flash[:notice] = "You have added new merchandise to be sold!"
        redirect_to products_path
      else
        render :new
      end
  end
  def edit
  end
  def update
  end
  def destroy
  end

private
  def product_params
    params.require(:product).permit(:name, :description, :found_in, :going_price)
  end
end
