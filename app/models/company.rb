class Company < ApplicationRecord
  has_many :manager

  accepts_nested_attributes_for :manager
end
