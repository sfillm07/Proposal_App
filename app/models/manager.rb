class Manager < ApplicationRecord
  belongs_to :company
  has_many :properties

  accepts_nested_attributes_for :properties
end
