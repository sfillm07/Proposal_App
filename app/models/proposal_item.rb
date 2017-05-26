class ProposalItem < ApplicationRecord
	belongs_to :proposal, required: false

	accepts_nested_attributes_for :proposal, :allow_destroy => true
end
