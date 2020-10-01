class Party < ApplicationRecord
  delegated_type :partyable, types: %w(Company Department Employee)

  has_many :commissioners, class_name: 'Accountability', inverse_of: :commissioner, foreign_key: :responsible_id, dependent: :destroy
  has_many :responsibles, class_name: 'Accountability', inverse_of: :responsible, foreign_key: :commissioner_id, dependent: :destroy
end
