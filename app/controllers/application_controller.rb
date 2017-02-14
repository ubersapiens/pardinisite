class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  private 

  def admin_only
    return true if current_user.present? && current_user.role == "admin"
    redirect_to root_path, alert: 'Access denied.'
  end

  def not_authenticated
    redirect_to login_path, alert: "Please login first"
  end
  
end
