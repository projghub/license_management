require 'spec_helper'

describe NetSuiteAccount do
  before { @net_suite_account = FactoryGirl.create(:net_suite_account) }
  subject { @net_suite_account }

  it { should respond_to(:account_id) }
  it { should respond_to(:name) }
  it { should respond_to(:parent_name) }

  describe "when account_id not present" do
    before { @net_suite_account.account_id = '' }
    it { should_not be_valid }
  end

  describe "when name not present" do
    before { @net_suite_account.name = '' }
    it { should_not be_valid }
  end

  describe "when parent_name not present" do
    before { @net_suite_account.parent_name = '' }
    it { should_not be_valid }
  end
end
