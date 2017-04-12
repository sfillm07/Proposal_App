class Company < ApplicationRecord
	has_many :managers

	accepts_nested_attributes_for :managers
end
