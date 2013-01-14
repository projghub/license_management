class Agreement < ActiveRecord::Base
  attr_accessible :account_id, :created_by, :deleted, :end_date, :exuberance_coordinator_id, :funding_source, :modified_by, :net_suite_account_id, :notes, :purchase_order_id, :purchase_order_item_id, :purchase_order_item_type_id, :quantity, :start_date, :status_id
end
