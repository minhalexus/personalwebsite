class Project < ApplicationRecord

	include Placeholder


	after_initialize :set_default

	def set_default
		self.image ||= Placeholder.image_generator(height: '180', width: '300')
	end
end
