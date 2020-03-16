class SecretsController < ApplicationController
  def home
    redirect_to login_path unless has_current_user
  end

  def show
    redirect_to '/login' unless has_current_user
    puts session[:name]
  end
end
