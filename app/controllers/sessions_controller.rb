class SessionsController < ApplicationController 
    before_action :require_login
    skip_before_action :require_login, only: [:new,:create,:destroy]

    def new 

    end 


    def create 
        redirect_to login_path if params[:name_id].nil?
        session[:name] = params[:name]
    end 

    def destroy
        session.delete :name
    end 
end