class ImagesController < ApplicationController
  def new
    @product = Product.find(params[:product_id])
    @image = @product.image.new
  end
  def create
  end
private
  def image_params
    params.require(:image).permit(:product_image, :title, :description)
  end
end
