class Proposal < ApplicationRecord
	has_many :proposal_items

	accepts_nested_attributes_for :proposal_items, :allow_destroy => true
end
