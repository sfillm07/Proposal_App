class Proposal < ApplicationRecord
  has_many :lineitem_proposals   ## Added association
  has_many :lineitems, :through => :lineitem_proposals
  accepts_nested_attributes_for :lineitem_proposals
end
