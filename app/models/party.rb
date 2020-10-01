class Party < ApplicationRecord
  belongs_to :partyable, polymorphic: true
end
