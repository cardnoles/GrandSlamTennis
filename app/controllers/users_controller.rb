class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def new
    @users = User.all
    @user = User.new
  end

  def create
     user = params[:user].permit(:first_name, :last_name, :user_name, :email, :admin, :password)
     User.create(user)
     redirect_to sessions_new_path
  end



  def show
     id = params[:id]
     @user = User.find(id)
  end

  def edit
    id = params[:id]
    @user = User.find(id)
  end

  def update
    user = User.find(params[:id])
    user.update_attributes(params.require(:user).permit(:first_name, :last_name, :user_name, :email, :password, :admin))
    redirect_to user_path(user)
  end

  def destroy
    id = params[:id]
    @user = User.find(id)
    @user.destroy
    redirect_to '/users'
  end

end
