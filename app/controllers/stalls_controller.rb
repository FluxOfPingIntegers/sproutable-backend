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

  def destroy
    if !!logged_in_user.vendor && !!Event.find(params[:id])
      vendor = logged_in_user.vendor
      event = Event.find(params[:id])
      if !!Stall.find_by(vendor_id: vendor.id, event_id: event.id)
        stall = Stall.find_by(vendor_id: vendor.id, event_id: event.id)
        stall.destroy
        render json: {success: true}
      else
        render json: {errors: "No stall found for that vendor/event"}, status: :unprocessable_entity
      end
    end
    render json: {errors: "Invalid stall deletion attempt"}, status: :forbidden
  end

end
