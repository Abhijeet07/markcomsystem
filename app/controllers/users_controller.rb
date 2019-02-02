class UsersController < ApplicationController
	
	def new
	@user = User.new
			
	end

	def create
		@new_user = User.create(
  		name: params[:user][:name],
  		phone: params[:user][:phone],
  		email: params[:user][:email],
  		message: params[:user][:message], 
  		  		)

		 if @new_user.save
		 	UserMailer.request_accept(@new_user).deliver_now
				
 			end
		
	end 

end



