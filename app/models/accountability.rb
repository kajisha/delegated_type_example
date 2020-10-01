class Accountability < ApplicationRecord
  attribute :started_at, default: -> { Time.current }

  belongs_to :commissioner, class_name: 'Party', inverse_of: :commissioners
  belongs_to :responsible, class_name: 'Party', inverse_of: :responsibles
end
