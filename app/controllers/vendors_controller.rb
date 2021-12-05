class VendorsController < ApplicationController
  
  def create
    user = logged_in_user
    if !!user.build_vendor(vendor_params)
      vendor = user.create_vendor(vendor_params)
      render json: vendor.display
    end
  end

  def show
    vendor = Vendor.find(params[:id])
    render json: vendor.display
  end

  def update
    if !!logged_in_user && logged_in_user.vendor.update(vendor_params)
      vendor = logged_in_user.vendor
      render json: vendor.display
    else
      rendor json: {errors: "Invalid Update Entry"}, status: :forbidden
    end
  end

  def delete
    byebug
  end

  private

  def vendor_params
    params.require(:vendor).permit(:username, :name, :email, :zipcode, :venmoname, :image, :website)
  end

end
