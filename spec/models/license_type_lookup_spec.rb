require 'spec_helper'

describe LicenseTypeLookup do
  before { @license_type_lookup = FactoryGirl.create(:license_type_lookup) }
  subject { @license_type_lookup }

  it { should respond_to(:item_id) }
  it { should respond_to(:license_type_id) }
end
