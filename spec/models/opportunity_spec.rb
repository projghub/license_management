require 'spec_helper'

describe Opportunity do
  before { @opportunity = FactoryGirl.create(:opportunity) }
  subject { @opportunity }

  it { should respond_to(:agreement_id) }
  it { should respond_to(:created_date) }
end
