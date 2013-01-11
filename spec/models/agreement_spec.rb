require 'spec_helper'

describe Agreement do
  before { @agreement = FactoryGirl.create(:agreement) }
  subject { @agreement }

  it { should respond_to(:purchase_order_id) }
  it { should respond_to(:purchase_order_item_id) }
  it { should respond_to(:purchase_order_item_type_id) }
  it { should respond_to(:account_id) }
  it { should respond_to(:quantity) }
  it { should respond_to(:notes) }
  it { should respond_to(:start_date) }
  it { should respond_to(:end_date) }
  it { should respond_to(:exuberance_coordinator_id) }
  it { should respond_to(:funding_source) }
  it { should respond_to(:status) }
  it { should respond_to(:deleted) }
  it { should respond_to(:created_by) }
  it { should respond_to(:modified_by) }
  it { should respond_to(:ns_account_id) }
end
