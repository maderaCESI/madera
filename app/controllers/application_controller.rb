class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  
  before_action :configure_devise_parameters, if: :devise_controller?
  
  
  def configure_devise_parameters
      devise_parameter_sanitizer.permit(:sign_up) {|u| u.permit(:firstname, :lastname, :username , :email, :password, :password_confirmation)}
  end
  
  rescue_from CanCan::AccessDenied do |exception|
    redirect_to authenticated_root_path, alert: 'Vous avez pas les droits néccéssaire pour cette manipulation'
  end
end
