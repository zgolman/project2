class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
 
  #make current user available in all view templates
  helper_method :current_user
  #makes current user in all controllers
  def current_user
  	@current_user ||= User.where(id:session[:user_id]).first
  end
end
