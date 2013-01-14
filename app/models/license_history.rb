class LicenseHistory < ActiveRecord::Base
  attr_accessible :created_by, :current_agreement_id, :current_license_status_id, :current_license_type_id, :event_id, :license_id, :notes, :previous_agreement_id, :previous_license_status_id, :previous_license_type_id, :reason_id
end
