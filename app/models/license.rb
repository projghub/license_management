class License < ActiveRecord::Base
  attr_accessible :agreement_id, :license_type_id, :status_id
end
