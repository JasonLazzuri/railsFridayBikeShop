class ReviewsController < ApplicationController

  def new
    @review = Review.new
    @product = Product.find(params[:product_id])
    @user = current_user
  end

  def create
    @product = Product.find(params[:product_id])
    @review = @product.reviews.new(review_params)
    current_user.reviews.push(@review)
    @review.save
    redirect_to '/'
  end

end

def review_params
  params.require(:review).permit(:content, :product_id,:review_id, :user_id, current_user)
end
