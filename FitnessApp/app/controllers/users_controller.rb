class UsersController < ApplicationController
	
	# GETS /users/new
	def new
		@user = User.new()
	end

	# POST /users
	def create
		@user = User.create(params[:user].slice(:username))

		if @user.valid?
			redirect_to(@user)
		else
			render(:new)
		end
	end
	
	#GET /users/:id
	def show
	end

end
