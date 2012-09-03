class ApplicationController < ActionController::Base
  protect_from_forgery
  
  private

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
  helper_method :current_user
  
  def correct_user
    @user = User.find(params[:id])
    if @user != current_user
      redirect_to root_path, notice: 'Please sign in.'
    end  
  end
  
  def signed_in_user
    if @user == current_user
      redirect_to root_path, notice: "If you do not have an account, please sign up. Otherwise please sign in."
    end
  end
  
  def signed_in?
    !current_user.nil?
  end
end
