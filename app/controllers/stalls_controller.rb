class StallsController < ApplicationController

  def create
    if !!logged_in_user.vendor
      user = logged_in_user
      vendor = user.vendor
      event = params[:id]
      byebug
    else
      render json: {errors: "Invalid action."}, status: :unprocessable_entity
    end
  end

end
