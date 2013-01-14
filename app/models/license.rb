class License < ActiveRecord::Base
  attr_accessible :agreement_id, :license_type_id, :status_id

  validates_presence_of :agreement_id
  validates_presence_of :license_type_id
end
