class ProductsController < ApplicationController
  def index
    @user = current_user
    @products = Product.all
  end
  def show
    @user = current_user
    @product = Product.find(params[:id])
    @comments = @product.comments.all
    @image = @product.image.last
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
    @user = current_user
    @product = Product.find(params[:id])
  end
  def update
    @user = current_user
    @product = Product.find(params[:id])
      if @product.update(product_params)
        flash[:notice] = "You have updated the information for this product."
        redirect_to products_path
      else
        render :edit
      end
    end
  def destroy
    @user = current_user
    @product = Product.find(params[:id])
    if @product.destroy
      flash[:notice] = "You have removed this item from our inventory."
      redirect_to products_path
    end
  end

private
  def product_params
    params.require(:product).permit(:name, :description, :found_in, :going_price,:product_image )
  end
end
