class ProductsController < ApplicationController
  def new
  end

  def index
    @user = current_user
  end

  def edit
  end

  def show
  end

end

private
def products_params
  params.require(:products).permit(:name, :description, :image, current_user)
end
