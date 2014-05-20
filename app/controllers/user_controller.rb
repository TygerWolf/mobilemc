class UserController < ApplicationController

	def new
		@users = Users.new
	end

	def create
		@user = User.new user_params
		if @user.save
			auto_login(@user)
			redirect_to root_url, :notice =>
		else
			render :new
		end
	end

	private
	def user_params
		params.require(:user).permit(:name, :email, :password)
	end
end
