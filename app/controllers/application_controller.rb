class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_filter :authenticate_user!
  before_filter :configure_permitted_parameters, if: :devise_controller?

protected

	 def configure_permitted_parameters
	   devise_parameter_sanitizer.for(:sign_up) << :firstname
	   devise_parameter_sanitizer.for(:sign_up) << :lastname
	   devise_parameter_sanitizer.for(:account_update) << :firstname
	   devise_parameter_sanitizer.for(:account_update) << :lastname
	 end

  def after_sign_in_path_for(resource)
    return user_path(resource)
  end
end
