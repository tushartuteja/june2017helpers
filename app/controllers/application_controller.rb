class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :current_user, :user_signed_in?

  def current_user
  	unless @current_user
  		@current_user = User.where(session[:user_id]).first
	end
	@current_user
  end

  def user_signed_in?
  	!current_user.nil?
  end


  def authenticate_user!
  	return redirect_to users_singin_get_path unless user_signed_in?
  end




end
