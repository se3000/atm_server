require 'spec_helper'

describe LocationsController do
  describe "#create" do
    context "with valid params" do
      it "creates a new instance of location" do
        expect {
          post :create, location: {latitude: 0.1, longitude: 1.0}
        }.to change { Location.count }.by(+1)
      end

      it 'responds with a success string' do
        post :create, location: {latitude: 0.1, longitude: 1.0}
        response.body.should == 'Location created!'
      end
    end

    context "with invalid params" do
      it "does not create a new instance of Location" do
        expect {
          post :create, location: {latitude: 0.1}
        }.not_to change { Location.count }
      end

      it 'responds with a success string' do
        post :create, location: {latitude: 0.1}
        response.body.should == "Longitude can't be blank"
      end
    end
  end
end
