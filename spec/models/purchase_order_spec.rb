require 'spec_helper'

describe PurchaseOrder do
  before { @purchase_order = FactoryGirl.create(:purchase_order) }
  subject { @purchase_order }

  it { should respond_to(:number) }
  it { should respond_to(:invoice_number) }
  it { should respond_to(:sale_number) }
  it { should respond_to(:net_suite_account_id) }
  it { should respond_to(:purchase_order_date) }
  it { should respond_to(:region_id) }
  it { should respond_to(:apm) }
  it { should respond_to(:sts) }
  it { should respond_to(:deleted) }
  it { should respond_to(:created_by) }
  it { should respond_to(:modified_by) }
end
