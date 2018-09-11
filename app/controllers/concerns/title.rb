module Title
	extend ActiveSupport::Concern

	included do
		before_action :set_title
	end

	def set_title
		@title = "Minhal Shanjer"
	end
end