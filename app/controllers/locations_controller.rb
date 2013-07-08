class LocationsController < ActionController::API

  def create
    location = Location.new(params[:location])

    if location.save
      render text: 'Location created!'
    else
      render text: location.errors.full_messages.join(' ')
    end
  end
end
