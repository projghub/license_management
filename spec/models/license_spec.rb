require 'spec_helper'

describe License do
  before { @license = FactoryGirl.create(:license) }
  subject { @license }

  it { should respond_to(:agreement_id) }
  it { should respond_to(:license_type_id) }
  it { should respond_to(:status_id) }

  describe "when agreement_id not present" do
    before { @license.agreement_id = '' }
    it { should_not be_valid }
  end

  describe "when license_type_id not present" do
    before { @license.license_type_id = '' }
    it { should_not be_valid }
  end
end
