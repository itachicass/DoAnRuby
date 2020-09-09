class ApplicationController < ActionController::Base
  include Pagy::Backend
  protect_from_forgery with: :null_session
 
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

    def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:name,:gender, :address, :phone_number, :date_of_birth, :email, :password)}

        devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:quyen_id, :email, :password, :current_password)}
    end

  # def configure_permitted_parameters
  #   added_attrs = [ :email, :password, :password_confirmation, :remember_me]
  #   devise_parameter_sanitizer.permit :sign_up, keys: added_attrs
  #   devise_parameter_sanitizer.permit :account_update, keys: added_attrs
  # end
  
end
