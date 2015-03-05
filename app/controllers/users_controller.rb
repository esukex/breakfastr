class UsersController < ApplicationController
###########################################################################################################
  def new
		@user = User.new
  end
	
	def create
		@user = User.new(user_params)
		if @user.save
			flash[:success]="User added!"
			reset_session
			session[:user_id]=@user.id
			redirect_to root_path
		else
			flash[:error]="Oops, try again."
			render :new
		end
	end
###########################################################################################################	
  def edit
		@user = User.find(params[:id])
  end
	
	def update
		@user = User.find(params[:id])
		if @user.update(user_params)
			flash[:success]="User updated!"
			redirect_to root_path
		else
			flash[:error]="Oops, try again."
			render :edit
		end
	end
###########################################################################################################
	def destroy
		user = User.find(params[:id])
		user.destroy
		flash[:success]="User Deleted"
		redirect_to root_path
	end
###########################################################################################################
#---------------------------------------------------------------------------------------------------------#
###########################################################################################################
	private
	def user_params
		params.require(:user).permit(:username, :email, :password, :password_confirmation)
	end
###########################################################################################################
end
