class PurchaseOrderItem < ActiveRecord::Base
  attr_accessible :allocated_quantity, :amount, :created_by, :deleted, :modified_by, :purchase_order_id, :number, :quantity
end
