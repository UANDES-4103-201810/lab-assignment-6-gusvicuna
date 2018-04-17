class RegistrationsController < ApplicationController
	def new
		user=User.new()
	end

	def create
	    user = User.create!(create_params)
			if user.save
				redirect_to root_url
			else
				redirect_to registrations_url
			end
	end

	def create_params
		params.require(:registrations).permit(:name,:last_name, :email, :password, :phone)
	end
end
