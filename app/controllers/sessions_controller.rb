# frozen_string_literal: true

class SessionsController < ApplicationController
  def new; end

  def create
    # byebug
    if params[:name].empty?
      redirect_to sessions_new_path
    else
      session[:name] = params[:name]
    end
  end

  def destroy
    session.clear unless session[:name].nil?  
  end
end
