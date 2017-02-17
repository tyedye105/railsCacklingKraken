class CommentsController < ApplicationController
  def new
    @user = current_user
    @product = Product.find(params[:product_id])
    @comment = @product.comments.new
  end
  def create
  end
  def edit
  end
  def update
  end
  def destroy
  end

  private
    def comment_params
      params.require(:comment).permit(:comment, :user_id, :product_id)
    end
end
