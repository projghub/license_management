require 'spec_helper'

describe PurchaseOrderItem do
  before { @purchase_order_item = FactoryGirl.create(:purchase_order_item) }
  subject { @purchase_order_item }

  it { should respond_to(:purchase_order_id) }
  it { should respond_to(:number) }
  it { should respond_to(:amount) }
  it { should respond_to(:quantity) }
  it { should respond_to(:allocated_quantity) }
  it { should respond_to(:deleted) }
  it { should respond_to(:created_by) }
  it { should respond_to(:modified_by) }
end
