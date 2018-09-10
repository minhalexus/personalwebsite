class UserMailer < ApplicationMailer
	default to: -> {EmailList.pluck(:email)}
	default from: 'minhalemailer@gmail.com'

	def welcome_email
		#@item = params[:project]
		mail(subject: "Welcome to my awesome Site")
	end

end
