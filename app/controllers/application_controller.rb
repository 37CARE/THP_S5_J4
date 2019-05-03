class ApplicationController < ActionController::Base
    include SessionsHelper

    def authenticate_user
      unless current_user
        flash[:danger] = "créé un compte dude"
        redirect_to "/login"
      end
    end

    private

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  helper_method :current_user
end