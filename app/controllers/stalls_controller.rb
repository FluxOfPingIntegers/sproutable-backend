class StallsController < ApplicationController

  def create
    if !!logged_in_user.vendor
      user = logged_in_user
      vendor = user.vendor
      event = params[:id]
    end
  end

end
