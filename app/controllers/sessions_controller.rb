class SessionsController < ApplicationController
  
  def new
    
  end

  def create
    if !params[:name].empty? and !params[:name].nil?
      session[:name] = params[:name]
    else
      redirect_to '/'
    end
  end

  def destroy
    session.clear if !session[:name].nil?
    redirect_to '/'
  end

end