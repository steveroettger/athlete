class SessionsController < ApplicationController
  def create
    user = User.from_omniauth(env["omniauth.auth"])
    session[:user_id] = user.id
    redirect_to edit_user_path(current_user)
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url
  end
end