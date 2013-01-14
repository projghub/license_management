class PurchaseOrderItem < ActiveRecord::Base
  attr_accessible :allocated_quantity, :amount, :created_by, :deleted, :modified_by, :purchase_order_id, :purchase_order_item_id, :purchase_order_item_number, :quantity
end
