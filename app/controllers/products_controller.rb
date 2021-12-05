class ProductsController < ApplicationController

  def index
    byebug
  end

  def create
    byebug
  end

  def show
    product = Product.find(params[:id])
    if !!product
      render json: product.display
    else
      render json: {errors: "No Such Product"}, status :unprocessable_entity
  end

  def update
    byebug
  end

  def destroy
    byebug
  end

end
