require 'spec_helper'

describe Lookup do
  before { @lookup = FactoryGirl.create(:lookup) }
  subject { @lookup }

  it { should respond_to(:lookup_type) }
  it { should respond_to(:name) }
  it { should respond_to(:value) }
  it { should respond_to(:description) }
  it { should respond_to(:priority) }

  describe "when name not present" do
    before { @lookup.name = '' }
    it { should_not be_valid }
  end
end
