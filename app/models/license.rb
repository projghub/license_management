class License < ActiveRecord::Base
  attr_accessible :license_type_id, :end_date, :start_date, :quantity, :license_status_id, :purchase_order_id, :net_suite_account_id

  belongs_to :purchase_order
  belongs_to :license_status
  belongs_to :license_type
  has_many :notes, as: :noteable

  validates_presence_of :quantity
  validates_presence_of :license_type_id
end
