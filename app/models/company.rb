class Company < ApplicationRecord
  include Partyable

  has_many :organization_structure_accountabilities, -> { organization_structure }, through: :party, source: :commissioners, dependent: :destroy
  has_many :organization_structures, through: :organization_structure_accountabilities, source: :commissioner, dependent: :destroy
  has_many :departments, through: :organization_structures, source: :partyable, source_type: 'Department', dependent: :destroy
  has_many :employees, through: :departments, source: :employees, dependent: :destroy
end
