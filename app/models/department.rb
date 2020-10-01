class Department < ApplicationRecord
  include Partyable

  has_many :belong_accountabilities, -> { belong }, through: :party, source: :commissioners, dependent: :destroy
  has_many :belongs, through: :belong_accountabilities, source: :commissioner, dependent: :destroy
  has_many :employees, through: :belongs, source: :partyable, source_type: 'Employee', dependent: :destroy
end
