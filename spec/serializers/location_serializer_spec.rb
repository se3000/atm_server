require 'spec_helper'

describe LocationSerializer do
  describe "#coordinate" do
    it "returns the coordinate as a hash of latitude and longitude" do
      location = Location.new(latitude: 12, longitude: 34)
      serializer = LocationSerializer.new(location)

      serializer.coordinate.should == {latitude: 12, longitude: 34}
    end
  end
end
