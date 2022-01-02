# frozen_string_literal: true

class ApplicationController < ActionController::Base # rubocop:todo Style/Documentation
  # include Pundit

  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :masquerade_user!

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: %i[name username])
    devise_parameter_sanitizer.permit(:account_update, keys: %i[name avatar])
  end
end
