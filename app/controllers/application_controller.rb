class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  
  private
  def current_user_profile
    # @current_user_profile = Profile.find_by_user_id(current_user)
    @current_user_profile = Profile.find_by user_id: current_user
    
  end
  helper_method :current_user_profile
end
