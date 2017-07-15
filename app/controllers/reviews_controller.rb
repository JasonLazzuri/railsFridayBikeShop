class ReviewsController < ApplicationController

  def index
    @product = Product.find(params[:product_id])
    @reviews = @product.reviews.all
  end

  def new
    @product = Product.find(params[:product_id])
    @review = Review.new
  end

  def create
    @product = Product.find(params[:product_id])
    @review = @product.reviews.new(review_params)
    @review.save
      binding.pry
    redirect_to product_reviews_path
  end

  def show
    @product = Product.find(params[:product_id])
    @review = @product.reviews.find(params[:id])
  end

  def destroy
    @product = Product.find(params[:product_id])
    @review = Review.find(params[:id])
    @review.destroy
    flash[:notice] = "Review deleted successfully!"
    redirect_to product_reviews_path(@product)
  end

end

def review_params
  params.require(:review).permit(:content, :product_id)
end
