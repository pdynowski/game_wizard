class SessionsController < ApplicationController

	def new
		if current_user
			redirect_to user_path(current_user) 
		else
			render :new, locals: {error: ""}
		end
	end

	def create
		user = User.find_by_email(params[:email])
		if user && user.authenticate(params[:password])
			session[:user_id] = user.id
			redirect_to user_path(user)
		else
			render :new, locals: {error: "Invalid username or password"}
		end
	end

	def destroy
		session[:user_id] = nil
    redirect_to '/login'
	end

end