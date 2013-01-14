class Lookup < ActiveRecord::Base
  attr_accessible :description, :lookup_type, :name, :priority, :value
end
