class Sale < ActiveRecord::Base
  attr_accessible :created_by, :deleted, :modified_by, :number
end
