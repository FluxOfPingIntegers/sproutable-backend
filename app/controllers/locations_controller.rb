class LocationsController < ApplicationController

 # def create

 # end

  def show
    location = Location.find(params[:id])
    render json: location
  end

  # /locations/zip-search/:zip_code
  def index
    locations = UsdaApi.zip_search(params[:zip_code])
    render json: locations
  end

 # def update

 # end

 # def delete

 # end

end
