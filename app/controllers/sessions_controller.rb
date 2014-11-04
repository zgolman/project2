class SessionsController < ApplicationController
	
	def new
		@user = User.new
		@is_login = true
	end
	def create
		#if we can find the user
		u = User.where (email: params[:user][:email]).first
		#and they had the right password
		if u && u.authenticate(params[:user][:password])
		  #sets the cookie going back to the browser so the browser hold who is logged in to the site
		  session[:user_id] = u.id.to_s
		  redirect_to employers_path
		 else
		 	redirect_to new_sessions_path
	end
	def destroy
		reset_session
		redirect_to new_sessions_path
	end