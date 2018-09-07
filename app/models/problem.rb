class Problem < ApplicationRecord

	# CASE SENSITIVE form fields.
	#name, from, description
	validates :name, :from, :description, presence: true
end
