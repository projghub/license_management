class LicenseStatus < ActiveRecord::Base
  attr_accessible :name

  has_many :licenses

  def to_s
    self.name
  end
end
