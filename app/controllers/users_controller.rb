class UsersController < ApplicationController
  def signin
  	email = params[:email]
  	password = params[:password]
  	user =  User.find_by_email_and_password(email, password)
  	if user
  		session[:user_id] = user.id
  		return redirect_to '/blogs'
  	else
  		return redirect_to users_singin_get_path
  	end

  end

  def signout
  end

  def singin_get
  end
end
