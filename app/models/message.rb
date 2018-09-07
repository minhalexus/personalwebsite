class Message < ApplicationRecord

	#name, email, content
	validates :name, :email, presence: true
end
