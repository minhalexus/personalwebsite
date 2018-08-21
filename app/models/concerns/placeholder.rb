module Placeholder
	extend ActiveSupport::Concern

	def self.image_generator(height:, width:)
		#"http://placehold.it/#{height}x#{width}"
		"https://via.placeholder.com/350x150"
	end
end