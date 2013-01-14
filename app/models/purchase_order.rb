class PurchaseOrder < ActiveRecord::Base
  attr_accessible :account_id, :area_sales_manager_id, :created_by, :deleted, :discount, :field_technician_id, :invoice_number, :modified_by, :net_suite_account_id, :notes, :purchase_order_amount, :purchase_order_date, :purchase_order_number, :region_id, :sale_id, :tax
end
