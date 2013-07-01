require 'spec_helper'

describe Location do
  describe "validations" do
    it { should have_valid(:latitude).when(0.1, 0.0) }
    it { should have_valid(:longitude).when(0.1, 0.0) }

    it { should_not have_valid(:latitude).when(nil) }
    it { should_not have_valid(:longitude).when(nil) }
  end
end
