class UserMailer < ApplicationMailer

	def request_accept(user)
    @user_new = user

    mail to: user.email
  end
	
	
end

