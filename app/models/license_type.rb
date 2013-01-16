class LicenseType < ActiveRecord::Base
  attr_accessible :name

  has_many :licenses

  validates_presence_of :name

  def to_s
    self.name
  end
end
