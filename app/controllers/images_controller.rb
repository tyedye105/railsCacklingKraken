class ImagesController < ApplicationController
  def new
    @user = current_user
    @product = Product.find(params[:product_id])
    @image = @product.image.new
  end
  def create
    @user = current_user
    @product = Product.find(params[:product_id])
    @image = @product.image.new(image_params)
      if @image.save
        flash[:notice] = "You have added an image to this product!"
        redirect_to product_path(@product)
      end
  end
private
  def image_params
    params.require(:image).permit(:product_image, :title, :description)
  end
end
