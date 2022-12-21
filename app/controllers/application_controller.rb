class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!
  before_action :update_allowed_parameters, if: :devise_controller?

  # Global var for define Title of Nav Bar
  $context = ''

  def after_sign_in_path_for(_resource)
    groups_path
  end

  # def after_sign_in_path_for(resource_or_scope)
  #   if resource_or_scope.is_a?(User)
  #     users_url
  #   else
  #     super
  #   end
  # end

  # def after_sign_out_path_for(resource_or_scope)
  #   #debugger
  #   users_url
  # end

  protected

  def update_allowed_parameters
    devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:name, :email, :password, :password_confirmation) }
    devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:name, :email, :password, :current_password) }
  end
end
