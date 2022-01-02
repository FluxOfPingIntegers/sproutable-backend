class StallsController < ApplicationController

  def create
    if !!logged_in_user.vendor
      vendor = logged_in_user.vendor
      event_id_list = params[:stalls].map {|param| param[:event_id]}
      Stall.process_form({event_id_list: event_id_list, vendor_id: vendor.id})
      render json: vendor.display
    else
      render json: {errors: "Invalid stall creation attempt"}, status: :unprocessable_entity
    end
  end

end
