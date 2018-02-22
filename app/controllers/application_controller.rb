class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_filter :grab_pages

  before_action :configure_permitted_parameters, if: :devise_controller?
  after_action :verify_authenticity_token, unless: :devise_controller?

  protected

  def grab_pages
    @pages = Page.all
  end

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [ :username, :email, :password, :password_confirmation, :remember_me, :sign_up_code] )
  end
end
