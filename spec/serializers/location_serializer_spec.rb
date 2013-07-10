require 'spec_helper'

describe LocationSerializer do
  describe "#coordinate" do
    it "returns the coordinate as a hash of latitude and longitude" do
      location = Location.new(latitude: 12, longitude: 34)
      serializer = LocationSerializer.new(location)

      serializer.coordinate.should == {latitude: 12, longitude: 34}
    end
  end

  describe "#to_json" do
    it "returns all necessary fields" do
      serializer = LocationSerializer.new(Location.new)
      json = JSON.parse(serializer.to_json)["location"]

      json.keys.should include "id", "coordinate", "fee", "bank_name"
    end
  end
end
