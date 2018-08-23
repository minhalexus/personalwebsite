class UserMailer < ApplicationMailer
	default from: 'notifications@example.com'

	def welcome_email
		#@item = params[:project]
		@url = 'http://example.com/login'
		mail(to: 'wingezda@gmail.com', subject: "Welcome to my awesome Site")
	end

end
