class PurchaseOrderItemLookup < ActiveRecord::Base
  attr_accessible :description, :fulfillment_type_id, :inactive, :item_type_id, :name, :purchase_order_id, :standard
end
