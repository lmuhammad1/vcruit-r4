class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  def after_sign_in_path_for(resource)
    welcome_path
  end
  
  private
  def current_user_profile
    # @current_user_profile = Profile.find_by_user_id(current_user)
    @current_user_profile = Profile.find_by user_id: current_user
  end
  
  helper_method :current_user_profile
end
