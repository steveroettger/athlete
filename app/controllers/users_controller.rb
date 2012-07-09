class UsersController < ApplicationController
  #before_filter :authenticate_admin_user!, only: [:index]
  before_filter :correct_user, only: [:edit, :update]
  before_filter :signed_in_user, only: [:index, :show]
  
  def index
    @users = User.paginate(page: params[:page])
  end
  
  def show
    @user = User.find(params[:id])
  end
  
  def edit
    @user = User.find(params[:id])
  end
  
  def update
    @user = User.find(params[:id])
    if @user.update_attributes(params[:user])
      redirect_to @user, notice: 'Your account has been successfully updated.'
    else
      render 'edit'
    end
  end
  
  private
  
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
end