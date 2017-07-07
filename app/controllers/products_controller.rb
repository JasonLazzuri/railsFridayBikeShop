class ProductsController < ApplicationController
  def new
    @product = Product.new
    @user = current_user
  end

  def index
    @user = current_user
    @products = Product.all
  end

  def create
    @product = Product.create(product_params)
    redirect_to 'products/index'
  end

  def edit
  end

  def show
    @product = Product.find(params[:id])
  end

end

private

def product_params
  params.require(:product).permit(:name, :description, :image, current_user)
end
