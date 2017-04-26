class Proposal < ApplicationRecord
	has_many :proposal_item

	accepts_nested_attributes_for :proposal_item, :reject_if => :all_blank, :allow_destroy => true
end
