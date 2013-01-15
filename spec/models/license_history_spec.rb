require 'spec_helper'

describe LicenseHistory do
  before { @license_history = FactoryGirl.create(:license_history) }
  subject { @license_history }

  it { should respond_to(:license_id) }
  it { should respond_to(:event_id) }
  it { should respond_to(:previous_agreement_id) }
  it { should respond_to(:current_agreement_id) }
  it { should respond_to(:previous_license_type_id) }
  it { should respond_to(:current_license_type_id) }
  it { should respond_to(:previous_license_status_id) }
  it { should respond_to(:current_license_status_id) }
  it { should respond_to(:reason_id) }
  it { should respond_to(:created_by) }

  describe "when license_id not present" do
    before { @license_history.license_id = '' }
    it { should_not be_valid }
  end
end
