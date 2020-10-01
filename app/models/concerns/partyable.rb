module Partyable
  extend ActiveSupport::Concern

  included do
    has_one :party, as: :partyable, touch: true, dependent: :destroy
  end
end
