module Placeholder
	extend ActiveSupport::Concern

	def self.image_generator(height:, width:)
		#"http://placehold.it/#{height}x#{width}"
		"https://via.placeholder.com/400x500"
	end
end