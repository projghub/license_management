class PurchaseOrderItemLookup < ActiveRecord::Base
  attr_accessible :description, :fulfillment_type_id, :inactive, :item_type_id, :name, :purchase_order_id, :standard

  validates_presence_of :purchase_order_id
  validates_presence_of :name
end
