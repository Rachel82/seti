class UserMailer < ApplicationMailer
	default from: "akilimali82@hotmail.fr" #change to admin

	def contact_form(email,name, message)
		@message(from: email,
			to: 'rachel_akilimali@hotmail.com',
			subject: 'A new contact form message from #{name}')
	end
end
