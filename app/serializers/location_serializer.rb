class LocationSerializer < ActiveModel::Serializer
  attributes :id, :coordinate

  def coordinate
    {latitude: object.coordinate.latitude, longitude: object.coordinate.longitude}
  end
end
