class Project < ApplicationRecord
	belongs_to :language

	include Placeholder

	#Title, Description, image
	validates :Title, :Description, :language_id, presence: true


	after_initialize :set_default


	def set_default
		begin
			self.image = "#{self.language.name.downcase}.jpg"
		rescue
			self.image ||= Placeholder.image_generator(height: '220', width: '350')
		end

		if self.Title != nil
			lastname = self.Title.downcase.split.last
			self.project_image = "#{lastname}.jpg"
		end
	end
end
