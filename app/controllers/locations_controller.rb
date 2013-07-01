class LocationsController < ActionController::API

  def create
    Location.create(params[:location])
  end
end
