class Region < ActiveRecord::Base
  attr_accessible :name

  has_many :purchase_orders

  validates_presence_of :name

  def to_s
    self.name
  end
end
