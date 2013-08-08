class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  def after_sign_in_path_for(resource)
    if current_user_profile.nil?
      new_profile_path
    else
      video_pages_path
    end
  end
  
  private
  def current_user_profile
    # @current_user_profile = Profile.find_by_user_id(current_user)
    @current_user_profile = Profile.find_by user_id: current_user
  end
  
  def login_name
    login = "#{current_user_profile.first_name.capitalize} #{current_user_profile.last_name.capitalize}"
  end
  
  helper_method :current_user_profile
  helper_method :login_name
end
