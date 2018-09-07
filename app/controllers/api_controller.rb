class ApiController < ActionController::Base

	def index
		@object = Project.take(3)
		render json: @object

	end

end