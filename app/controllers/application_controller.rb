class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_user, :logged_in?

  
  private

  def user_authenticated
  	!!current_user
  end

  def logged_in?
  	session[:user_id]
  end

  def current_user
  	current_user ||= User.find(session[:user_id])
  end

end
