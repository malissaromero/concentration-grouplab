class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def new
    @users = User.new
  end

  def create
    @user = User.create!(user_params)
  end

  def edit
    @user = User.find(params[:id])
  end

  def updated
    @user = User.find(params[:id])
    @user.update(post_params)
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
  end

  private
    def user_params
      params.require(:user).permit(:username)
    end
end
