class Message < ApplicationRecord

	#name, email, content
	validates :name, presence: true
end
