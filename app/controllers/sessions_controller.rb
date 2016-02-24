class SessionsController < ApplicationController
  def new
  end

  def create
  	#custom find_by method find_by_email
    user = User.find_by_email(params[:email])
    if user && user.authenticate(params[:password])
    	#if has_basic_credentials?(request)
    		#login_procedure.call(*user_name_and_password(request))
       
      session[:user_id] = user.id
      session[:user_name] = user.first_name
      redirect_to "/users/#{user.id}"
    else
      flash[:errors] = ["Invalid combination"]
      redirect_to root_path
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end

end
