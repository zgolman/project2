class ApplicationController < ActionController::Base

before_filter :authorize
protect_from_forgery wth: :exception

 private

  def current_user
  	
  	puts session[:user_id]
    @current_user ||= User.find(session[:user_id]["$oid"]) if session[:user_id] 
  end
  helper_method :current_user

end
