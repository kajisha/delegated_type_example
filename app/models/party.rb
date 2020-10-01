class Party < ApplicationRecord
  delegated_type :partyable, types: %w(Company Department Employee)

  has_many :commissioners, class_name: 'Accountability', inverse_of: :commissioner, dependent: :destroy
  has_many :responsibles, class_name: 'Accountability', inverse_of: :responsible, dependent: :destroy
end
