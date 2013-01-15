class Region < ActiveRecord::Base
  attr_accessible :name

  has_many :purchase_orders

  def to_s
    self.name
  end
end
