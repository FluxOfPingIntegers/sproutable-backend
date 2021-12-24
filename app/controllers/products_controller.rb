class ProductsController < ApplicationController

  def index
    byebug
  end

  def create
    user = logged_in_user
    vendor = Vendor.find(params[:vendor_id])
    if user.vendor == vendor && user.vendor.products.build(product_params).valid?
      user.vendor.products.create(product_params)
      render json: vendor.display
    else
      render json: {errors: "Invalid Product Creation Attempted"}, status: :unprocessable_entity
    end
  end

  def show
    product = Product.find(params[:id])
    if !!product
      render json: product.display
    else
      render json: {errors: "No Such Product"}, status: :unprocessable_entity
    end
  end

  def update
    byebug
  end

  def destroy
    user = logged_in_user
    vendor = Vendor.find(params[:vendor_id])
    product = Product.find(params[:id])
    if !!user && !!vendor && !!product && user.vendor == vendor && product.vendor == vendor
      product.destroy
      render json: vendor.display
    else
      render json: {errors: "Invalid product delete attempt"}, status: :unprocessable_entity
    end
  end

  private

  def product_params
    params.require(:product).permit(:name, :category, :description, :image, :price, :quantity)
  end

end
