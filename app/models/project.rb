class Project < ApplicationRecord
	belongs_to :language

	include Placeholder

	#Title, Description, image
	validates :Title, :Description, :language_id, presence: true


	after_initialize :set_default

	def set_default
		self.image ||= Placeholder.image_generator(height: '180', width: '300')
	end
end
