class Proposal < ApplicationRecord
  has_many :proposal_item, inverse_of: :proposal

  accepts_nested_attributes_for :proposal_item, :allow_destroy => true
end
