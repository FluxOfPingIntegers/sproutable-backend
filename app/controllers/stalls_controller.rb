class StallsController < ApplicationController

  def create
    byebug
=begin
    if !!logged_in_user.vendor
      user = logged_in_user
      vendor = user.vendor
      event = Event.find(params[:id])
      Stall.create(vendor_id: vendor.id, event_id: event.id, date: event.date)
      render json: vendor.display
    else
      render json: {errors: "Invalid action."}, status: :unprocessable_entity
    end
=end
  end

end
