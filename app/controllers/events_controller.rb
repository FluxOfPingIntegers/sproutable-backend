class EventsController < ApplicationController

  def index
    location = Location.find(params[:location_id])
    location.updateEvents
    events = location.events
    render json: {location: location, events: events}
  end

  def list
    locations = UsdaApi.zip_search(params[:zip_code])
    events = locations.map do |location|
      location.updateEvents
      location.events
    end
    if !!events
      render json: {events: events}
    else
      render json: {errors: "Invalid zipcode request"}, status: :unprocessable_entity
    end
  end

  def show
    event = Event.find(params[:id])
    render json: {
      event: event, 
      vendors: event.vendors,
      items: event.items}
  end

end
