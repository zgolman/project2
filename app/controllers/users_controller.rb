class UsersController < ApplicationController
	def index
		@users = User.all
	end
	def new 
		@users = User.new
		@is_signup = true
	end
	def create
		user = User.new(params.require(:user).
		  permit(:email, :password, :password_confirmation))
		if user.save
			redirect_to :employers_path
		else
			redirect_to :new_user_path
		end
	end
end
