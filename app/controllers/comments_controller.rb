class CommentsController < ApplicationController
  def new
    @user = current_user
    @product = Product.find(params[:product_id])
    @comment = @product.comments.new
  end
  def create
    @user = current_user
    @product = Product.find(params[:product_id])
    @comment = @product.comments.new(comment_params)
    if @product.save
      flash[:notice] = "You have added a comment to this product!"
      redirect_to product_path(@product)
    else
      render :new
    end
  end

  def destroy
      @product = Product.find(params[:product_id])
      @comment = @product.comments.find(params[:id  ])
      if @comment.destroy
        flash[:notice] = "You have removed a comment about the product!"
        redirect_to product_path(@product)
    end
  end

  private
    def comment_params
      params.require(:comment).permit(:comment, :user_id, :product_id)
    end
end
