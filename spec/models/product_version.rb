require 'spec_helper'

describe ProductVersion do
  before { @product_version = FactoryGirl.create(:product_version) }
  subject { @product_version }

  it { should respond_to(:name) }

  describe "when name not present" do
    before { @product_version.name = '' }
    it { should_not be_valid }
  end
end
