class EventsController < ApplicationController

  def index
    location = Location.find(params[:location_id])
    location.updateEvents()
    events = location.events
    render json: {location: location, events: events}
  end

  def create

  end

  def show

  end

  def update

  end

  def delete

  end

end
