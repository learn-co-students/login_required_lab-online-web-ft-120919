class SessionsController < ApplicationController
  before_action :redirect_if_not_logged_in
  skip_before_action :redirect_if_not_logged_in, only: [:destroy, :create]

  def new
  end

  def create
    if params[:name].blank?
      redirect_to controller: 'sessions', action: 'new'
    else
      session[:name] = params[:name]
    end
  end

  def destroy
    session.delete :name
  end

end