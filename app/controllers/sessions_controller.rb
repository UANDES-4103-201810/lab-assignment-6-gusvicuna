class SessionsController < ApplicationController
	def new
	end

	def create
		is_user_logged= !session[:user].nil?
		if is_user_logged
			redirect_to user_url
		else
			redirect_to root_url
		end
	end

	def destroy
		@logged_user= nil
		redirect_to root_url
	end
end
