class Lineitem < ApplicationRecord
  has_many :lineitem_proposals
  has_many :proposals, through: :lineitem_proposals
end
