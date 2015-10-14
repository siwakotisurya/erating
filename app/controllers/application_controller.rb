class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_filter :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters
    role = "admin"
    devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:address, :email, :password, :phone_number, :image, :role) }
  end

  rescue_from CanCan::AccessDenied do |exception|
    redirect_to ratings_judge_dashboard_path, :alert => exception.message
  end

end
