require 'spec_helper'

describe LicenseType do
  before { @license_type = FactoryGirl.create(:license_type) }
  subject { @license_type }

  it { should respond_to(:name) }

  describe "when name not present" do
    before { @license_type.name = '' }
    it { should_not be_valid }
  end
end
