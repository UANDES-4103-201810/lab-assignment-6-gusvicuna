class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def index

  end

  def current_user
	   @logedin_user = User.find(session[:user])
  end

  def is_user_logged_in?
  	logged_in = !session[:user].nil?
	if logged_in then true else redirect_to root_path end
  end
end
