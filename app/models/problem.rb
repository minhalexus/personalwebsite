class Problem < ApplicationRecord
	belongs_to :language

	# CASE SENSITIVE form fields.
	#name, from, description
	validates :name, :from, :description, :language_id, presence: true
end
