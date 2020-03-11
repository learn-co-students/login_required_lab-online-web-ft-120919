class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def home
    if current_user.nil? 
      redirect_to '/login'
    end
  end

  def current_user
    user ||= session[:name]
  end

  def require_login
   if current_user.nil?
    flash[:alert] = "You must login to view secret content"
    redirect_to '/login'
   end  
  end
end
