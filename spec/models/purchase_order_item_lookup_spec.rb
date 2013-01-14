require 'spec_helper'

describe PurchaseOrderItemLookup do
  before { @purchase_order_item_lookup = FactoryGirl.create(:purchase_order_item_lookup) }
  subject { @purchase_order_item_lookup }

  it { should respond_to(:purchase_order_id) }
  it { should respond_to(:purchase_order_item_type_id) }
  it { should respond_to(:fulfillment_type_id) }
  it { should respond_to(:name) }
  it { should respond_to(:description) }
  it { should respond_to(:standard) }
  it { should respond_to(:inactive) }

  describe "when purchase_order_id not present" do
    before { @purchase_order_item_lookup.purchase_order_id = '' }
    it { should_not be_valid }
  end

  describe "when name not present" do
    before { @purchase_order_item_lookup.name = '' }
    it { should_not be_valid }
  end
end
