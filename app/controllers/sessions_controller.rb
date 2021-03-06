class SessionsController < ApplicationController

	def new
		if current_user
			redirect_to user_path(current_user)
		else
			render :new
		end
	end

	def create
		user = User.find_by_email(params[:login][:email])
		if user && user.authenticate(params[:login][:password])
			session[:user_id] = user.id
			redirect_to user_path(user)
		else
			flash.now[:alert] = "Invalid username or password"
			render :new
		end
	end

	def destroy
		session[:user_id] = nil
    redirect_to '/login'
	end

end
