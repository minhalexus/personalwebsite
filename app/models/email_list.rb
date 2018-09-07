class EmailList < ApplicationRecord

	#email
	validates :email, presence: true
end
