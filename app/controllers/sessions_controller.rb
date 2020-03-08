class SessionsController < ApplicationController
  def create
    session[:name] = params[:name]
    #binding.pry
    redirect_to '/' if session[:name].nil? || session[:name].empty?
  end

  def show
    redirect_to '/' if session[:name].nil? || session[:name].empty?
    render "#{session[:name]}"
  end

  def destroy
    if session[:name]
      session.delete :name
    end
  end
end
