require 'spec_helper'

describe Region do
  before { @region = FactoryGirl.create(:region) }
  subject { @region }

  it { should respond_to(:name) }

  describe "when name not present" do
    before { @region.name = '' }
    it { should_not be_valid }
  end
end
