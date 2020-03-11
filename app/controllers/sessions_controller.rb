class SessionsController < ApplicationController
  def new 
  end

  def create
    if !params[:name].nil? && !params[:name].blank?
      session[:name] = params[:name]
      redirect_to :secret
    else
      flash[:alert] = "Please enter a name to login"
      redirect_to '/login'
    end
  end

  def destroy
    if !!current_user
      session.clear
      flash[:alert] = "You have been logged out."
      redirect_to '/login'
    end
  end 
end
