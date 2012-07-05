class UsersController < ApplicationController
  before_filter :authenticate_admin_user!, only: [:index]
  
  def index
    @users = User.all
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
end