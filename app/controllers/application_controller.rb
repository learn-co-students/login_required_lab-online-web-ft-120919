class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :current_user
  helper_method :is_logged_in?
  helper_method :redirect_if_not_logged_in

  def current_user
    session[:name] ||= nil
  end

  private

  def is_logged_in?
    !session[:name].blank?
  end

  def redirect_if_not_logged_in
    redirect_to controller: 'sessions', action: 'new' unless is_logged_in?
  end
end
