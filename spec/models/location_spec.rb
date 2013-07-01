require 'spec_helper'

describe Location do
  describe "#coordinate" do
    context "when there is no persisted coordinate" do
      it "creates a coordinate with a latitude and a longitude" do
        location = Location.new(latitude: 1, longitude: 1)

        location.coordinate.should be_present

        location.coordinate.latitude.should == 1.0
        location.coordinate.longitude.should == 1.0
      end

      it "does not create a coordinate with only a latitude" do
        location = Location.new(latitude: 1, longitude: nil)
        location.coordinate.should_not be_present
      end

      it "does not create a coordinate with only a longitude" do
        location = Location.new(latitude: nil, longitude: 1)
        location.coordinate.should_not be_present
      end

      it "does not create a coordinate without a latitude or longitude" do
        location = Location.new(latitude: nil, longitude: nil)
        location.coordinate.should_not be_present
      end
    end
  end

  describe "#latitude=" do
    it "converts latitude to a float" do
      location = Location.new

      location.latitude = 1
      location.latitude.should == 1.0

      location.latitude = "1"
      location.latitude.should == 1.0
    end

    context "when there is also a longitude" do
      it "updates the coordinate" do
        location = Location.new(longitude: 1)

        location.latitude = 1

        location.coordinate.latitude.should == 1.0
      end
    end
  end

  describe "#longitude=" do
    it "converts latitude to a float" do
      location = Location.new

      location.longitude = 1
      location.longitude.should == 1.0

      location.longitude = "1"
      location.longitude.should == 1.0
    end

    context "when there is also a latitude" do
      it "updates the coordinate" do
        location = Location.new(latitude: 1)

        location.longitude = 1

        location.coordinate.longitude.should == 1.0
      end
    end
  end
end
