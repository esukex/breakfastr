class SessionsController < ApplicationController
  def new
  end
	
	def create
		username = params[:session][:username]
		password = params[:session][:password]
		@user = User.find_by(username: username)
		if @user.present? and @user.authenticate(password)
			flash[:success]="Logged in"
			session[:user_id]=@user.id
			redirect_to root_path
		else
			flash[:error]="Oops, try again"
			render :new
		end
	end

  def show
  end
	
	def destroy
		reset_session
		flash[:success]="Logged Out"
		redirect_to root_path
	end
end
