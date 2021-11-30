class VendorsController < ApplicationController
  
  def create
    user = logged_in_user
    if !!user.vendor.build(vendor_params)
      vendor = user.vendor.create(vendor_params)
      render json: vendor
    end
  end

  def show
    vendor = Vendor.find(params[:id])
    render json: vendor
  end

  def update
    if !!logged_in_user && logged_in_user.vendor.update(vendor_params)
      rendor json: logged_in_user.vendor
    else
      rendor json: {errors: "Invalid Update Entry"}, status: :forbidden
    end
  end

  def delete
    byebug
  end

  private

  def vendor_params
    params.permit(:username, :name, :email, :zipcode, :venmoname, :image, :website)
  end

end
