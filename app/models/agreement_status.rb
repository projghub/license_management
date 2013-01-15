class AgreementStatus < ActiveRecord::Base
  attr_accessible :name

  has_many :agreements
end
