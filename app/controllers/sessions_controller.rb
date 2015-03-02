class SessionsController < ApplicationController
  skip_before_action :require_login, only: [:create, :destroy]

  def create
    user = User.from_omniauth(env["omniauth.auth"])
    user.update_auth_data(env["omniauth.auth"])
    session[:uuid] = user.uuid
    redirect_to root_path
  end

  def destroy
    session[:uuid] = nil
    redirect_to root_path
  end
end
