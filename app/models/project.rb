class Project < ApplicationRecord
	belongs_to :language

	include Placeholder

	#Title, Description, image
	validates :Title, :Description, :language_id, presence: true


	after_initialize :set_default


	def set_default
		begin
			if self.language.name == "Ruby"
				self.image = 'ruby-on-rails.jpg'
			else
				self.image ||= Placeholder.image_generator(height: '180', width: '300')
			end
		rescue
			self.image ||= Placeholder.image_generator(height: '180', width: '300')
		end
	end
end
