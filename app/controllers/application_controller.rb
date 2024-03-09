class ApplicationController < ActionController::Base
  before_action :configure_sign_up_params, only: [:create]

  protected

  # Deviseのストロングパラメーターを拡張
  def configure_sign_up_params
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :email, :password, :password_confirmation])
  end

end
