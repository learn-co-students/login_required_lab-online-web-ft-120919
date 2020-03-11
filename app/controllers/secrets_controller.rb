class SecretsController < ApplicationController
 
  def show
    redirect_to '/' unless session[:name]
  end

end