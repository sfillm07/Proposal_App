class Manager < ApplicationRecord
  belongs_to :company
  belongs_to :user
  has_many :properties

  accepts_nested_attributes_for :properties
end
