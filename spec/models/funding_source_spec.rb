require 'spec_helper'

describe FundingSource do
  before { @funding_source = FactoryGirl.create(:funding_source) }
  subject { @funding_source }

  it { should respond_to(:name) }

  describe "when name not present" do
    before { @funding_source.name = '' }
    it { should_not be_valid }
  end
end
