class UsersController < ApplicationController

  def new
  	# renders login/registration page
  end

  def show
  	@user = User.find(params[:id])
  	@shoes = Shoe.all
  	@sales = Shoesale.all
  end

  def create
  	@user = User.new(user_params)
  	if @user.save
      session[:user_id] = @user.id
  		redirect_to "/users/#{session[:user_id]}"
  	else 
  		flash[:errors] = @user.errors.full_messages
      redirect_to :back
    end
  end
private
  def user_params
  	params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation)
  end
end
