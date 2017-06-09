class Property < ApplicationRecord
  belongs_to :manager
  has_many :proposals
end
