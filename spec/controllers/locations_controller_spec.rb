require 'spec_helper'

describe LocationsController do
  describe "#create" do
    it "creates a new instance of location" do
      expect {
        post :create, location: {latitude: 0.1, longitude: 1.0}
      }.to change { Location.count }.by(+1)
    end
  end
end
