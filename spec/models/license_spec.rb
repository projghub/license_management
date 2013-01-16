require 'spec_helper'

describe License do
  before { @license = FactoryGirl.create(:license) }
  subject { @license }

  it { should respond_to(:purchase_order_id) }
  it { should respond_to(:quantity) }
  it { should respond_to(:start_date) }
  it { should respond_to(:end_date) }
  it { should respond_to(:license_status_id) }
  it { should respond_to(:license_type_id) }
  it { should respond_to(:net_suite_account_id) }

  describe "when purchase_order_id not present" do
    before { @license.purchase_order_id = '' }
    it { should_not be_valid }
  end
end
