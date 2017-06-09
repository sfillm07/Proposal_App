class LineitemProposal < ApplicationRecord
  belongs_to :lineitem
  belongs_to :proposal
end
