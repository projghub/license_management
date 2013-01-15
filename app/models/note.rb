class Note < ActiveRecord::Base
  attr_accessible :description

  belongs_to :noteable, polymorphic: true
end
