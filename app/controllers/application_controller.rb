class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username, :email, :password, :description, :image, :image_cache])
    devise_parameter_sanitizer.permit(:sign_in, keys: [:username, :email, :password, :description, :image, :image_cache])
    devise_parameter_sanitizer.permit(:account_update, keys: [:username, :email, :password, :description, :image, :image_cache])
  end
end
