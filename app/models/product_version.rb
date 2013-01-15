class ProductVersion < ActiveRecord::Base
  attr_accessible :name

  def to_s
    self.name
  end
end
