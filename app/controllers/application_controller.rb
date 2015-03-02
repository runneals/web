class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :require_login
  helper_method :current_user

  def current_user
    if session[:uuid]
      @current_user = User.find_by_uuid session[:uuid]
    end
  end

  def require_login
    unless logged_in?
      session[:previous_url] = request.original_url
      flash[:danger] = "You must be logged in to access this section"
      redirect_to root_path
    end
  end

  def logged_in?
    current_user != nil
  end
end
