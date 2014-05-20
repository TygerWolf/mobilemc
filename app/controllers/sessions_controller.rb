class SessionsController < ApplicationController

	def create
		user = login(params[:email]), params[:password])
		if user
			redirect_back_or_to root_url, :notice => "You are logged in!"
		else
			flash.now alert = "Email or password is invalid"
			render :new

		end
	end

	def destroy
		logout
		redirect_to root_url, :notice => "Logged Out"
	end
end
