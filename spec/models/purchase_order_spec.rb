require 'spec_helper'

describe PurchaseOrder do
  before { @purchase_order = FactoryGirl.create(:purchase_order) }
  subject { @purchase_order }

  it { should respond_to(:sale_id) }
  it { should respond_to(:account_id) }
  it { should respond_to(:purchase_order_date) }
  it { should respond_to(:number) }
  it { should respond_to(:amount) }
  it { should respond_to(:invoice_number) }
  it { should respond_to(:area_sales_manager_id) }
  it { should respond_to(:region_id) }
  it { should respond_to(:field_technician_id) }
  it { should respond_to(:discount) }
  it { should respond_to(:tax) }
  it { should respond_to(:notes) }
  it { should respond_to(:deleted) }
  it { should respond_to(:created_by) }
  it { should respond_to(:modified_by) }
end