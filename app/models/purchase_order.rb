class PurchaseOrder < ActiveRecord::Base
  attr_accessible :apm, :created_by, :deleted, :sts, :invoice_number, :modified_by, :net_suite_account_id, :purchase_order_date, :number, :region_id, :sale_number

  has_many :agreements
  has_many :notes, as: :noteable

  def to_s
    self.number
  end
end
