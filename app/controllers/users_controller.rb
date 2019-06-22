class UsersController < ApplicationController

	def new
		if current_user
			redirect_to user_path(current_user)
		else
			@user = User.new
			render :new, locals: {errors: ""}
		end
	end

	def create
		@user = User.new(allowed_params)
		begin
		  @user.save!
			session[:user_id] = user.id
			redirect_to user_path(user)
		rescue Exception => e
			render :new, locals: {errors: e.message} and return
		end
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

	def allowed_params
		params.require(:user).permit(:email, :password, :password_confirmation, :display_name)
	end

end
