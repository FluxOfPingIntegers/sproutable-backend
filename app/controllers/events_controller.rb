class EventsController < ApplicationController

  def index
    location = Location.find(params[:location_id])
    location.updateEvents
    events = location.events
    render json: {location: location, events: events}
  end

  def list
    byebug
  end

  def show
    event = Event.find(params[:id])
    render json: {
      event: event, 
      vendors: event.vendors,
      items: event.items}
  end

end
