class ApiController < ActionController::Base

	def index
		@object = Project.all
		render json: @object
	end

end