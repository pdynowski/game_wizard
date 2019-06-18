class UsersController < ApplicationController

	def new
	end

	def create
	end

	def edit
		if current_user && params[:id].to_i == current_user.id
			render 'edit'
		else
			redirect_to '/'
		end
	end

	def update
	end

	def index
		if current_user
			render 'index'
		else
			redirect_to '/'
		end
	end

	def show
		if current_user && params[:id].to_i == current_user.id
			render 'show'
		else
			redirect_to '/'
		end
	end

end