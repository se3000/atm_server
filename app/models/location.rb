class Location < ActiveRecord::Base
  attr_accessor :latitude, :longitude

  def self.point_factory
    @point_factory ||= RGeo::Geographic.spherical_factory(:srid => 4326)
  end

  def latitude=(lat)
    lat = lat.to_f unless lat.nil?
    @latitude = lat
    set_coordinate
    latitude
  end

  def longitude=(long)
    long = long.to_f unless long.nil?
    @longitude = long
    set_coordinate
    longitude
  end


  private

  def set_coordinate
    if latitude.present? && longitude.present?
      self.coordinate = self.class.point_factory.point(longitude, latitude)
    end
  end
end
