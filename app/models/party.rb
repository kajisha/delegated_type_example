class Party < ApplicationRecord
  delegated_type :partyable, types: %w(Company Department Employee)
end
