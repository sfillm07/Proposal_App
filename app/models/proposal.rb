class Proposal < ApplicationRecord
  has_many :lineitem_proposals   ## Added association
  has_many :lineitems, through: :lineitem_proposals
  has_many :managers
  accepts_nested_attributes_for :managers
  accepts_nested_attributes_for :lineitems, allow_destroy: true
  accepts_nested_attributes_for :lineitem_proposals, allow_destroy: true
end
