class ApplicationController < ActionController::Base
  protect_from_forgery

  helper_method :current_user

  def current_user
    if session[:user_id].present?
      @_current_user ||= User.find(session[:user_id])
    else
      nil
    end
  end

end