require 'spec_helper'

describe Sale do
  before { @sale = FactoryGirl.create(:sale) }
  subject { @sale }

  it { should respond_to(:number) }
  it { should respond_to(:deleted) }
  it { should respond_to(:created_by) }
  it { should respond_to(:modified_by) }
end
