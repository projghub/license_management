class Lookup < ActiveRecord::Base
  attr_accessible :description, :lookup_type, :name, :priority, :value

  validates_presence_of :name
end
