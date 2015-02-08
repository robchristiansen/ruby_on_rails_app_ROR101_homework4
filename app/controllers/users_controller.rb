class UsersController < ApplicationController
  def index
  @users = User.all

  end

  def show
  
  @user = User.find_by_id(params[:id])
  binding.pry
  end

def  destroy
    # find the id of a user we want to delete
    @user = User.find_by_id(params[:id])
    @user.destroy
  
    # display a flash message in index view
    flash[:notice] = "User was destroyed"
    redirect_to users_path
  end

end
   