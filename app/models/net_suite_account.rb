class NetSuiteAccount < ActiveRecord::Base
  attr_accessible :account_id, :name, :parent_name

  validates_presence_of :account_id
  validates_presence_of :name
  validates_presence_of :parent_name
end
