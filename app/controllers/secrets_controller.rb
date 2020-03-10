class SecretsController < ApplicationController
    before_action :require_login

    def show
    end

    private
 
    def require_login
        # return head(:forbidden) unless session.include? :name
        flash[:error] = "You must be logged in to access this section" unless session.include? :name
        redirect_to '/login' unless session.include? :name
    end
  
  end