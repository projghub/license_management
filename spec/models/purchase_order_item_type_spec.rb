require 'spec_helper'

describe PurchaseOrderItemType do
  before { @purchase_order_item_type = FactoryGirl.create(:purchase_order_item_type) }
  subject { @purchase_order_item_type }

  it { should respond_to(:name) }

  describe "when name not present" do
    before { @purchase_order_item_type.name = '' }
    it { should_not be_valid }
  end
end
