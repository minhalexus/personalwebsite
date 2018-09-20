class UserMailer < ApplicationMailer
	default to: -> {EmailList.pluck(:email)}
	default from: 'minhalemailer@gmail.com'

	def new_project
		@new_project = Project.last
		mail(subject: "New Project created on shanjer.ca! Check it out!")
	end

	def new_message
		@new_message = Message.last
		subject_string = "You have a new message from #{@new_message.name} on shanjer.ca"
		mail(to: ["mshanjer@gmail.com", "mashanje@uwaterloo.ca", "minhalmailer@gmail.com"], 
			subject: subject_string)
	end

	def new_suscriber
		@new_suscriber = EmailList.last
		subject_string = "You have a new suscriber: #{@new_suscriber.email} on shanjer.ca"
		mail(to: ["mshanjer@gmail.com", "mashanje@uwaterloo.ca", "minhalmailer@gmail.com"], 
			subject: subject_string)
	end

end
