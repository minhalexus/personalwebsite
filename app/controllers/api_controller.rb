class ApiController < ActionController::Base
	access all: [:index], admin: :all, user: [:index, :temp]

	def index
		@object = Project.all
		render json: @object
	end

	def temp

	end

end