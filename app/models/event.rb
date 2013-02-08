class Event < ActiveRecord::Base
  attr_accessible :name, :description, :priority
end
