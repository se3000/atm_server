class LocationSerializer < ActiveModel::Serializer
  attributes :id, :coordinate, :fee, :bank_name

  def coordinate
    return {} unless object.coordinate
    {latitude: object.coordinate.latitude, longitude: object.coordinate.longitude}
  end
end
