class UsersController < ApplicationController
  before_filter :correct_user, only: [:edit, :update]
  before_filter :signed_in_user, only: [:index, :show, :following, :followers]
  
  def index
      @user = current_user
      #@users = User.paginate(page: params[:page])
      @users = User.search(params)
  end
  
  def dashboard
    @user = User.find(params[:id])
  end
  
  def show
    @user = User.find(params[:id])
  end
  
  def edit
    @user = User.find(params[:id])
    render 'dashboard'
  end
  
  def update
    @user = User.find(params[:id])
    if @user.update_attributes(params[:user])
      redirect_to edit_user_path(current_user), notice: 'Your account has been successfully updated.'
    else
      render 'edit'
    end
  end
  
  def following
    @title = "Following"
    @user = User.find(params[:id])
    @users = @user.followed_users.paginate(page: params[:page])
    render 'show_follow'
  end
  
  def followers
    @title = "Followers"
    @user = User.find(params[:id])
    @users = @user.followers.paginate(page: params[:page])
    render 'show_follow'
  end
end