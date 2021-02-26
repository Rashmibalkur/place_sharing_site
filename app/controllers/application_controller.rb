class ApplicationController < ActionController::Base
  protect_from_forgery
  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?

  def check_login
    unless current_user
      redirect_to new_user_session_path
    end
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:user_name, :email, :password)}
    devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:user_name, :email, :password, :current_password)}
  end

  

end
