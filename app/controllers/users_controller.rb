class UsersController < ApplicationController

  def index
    @users = User.all
  end

  # display new user form
  def new
    @user = User.new
  end

  # create new user
  def create

  end

  # edit the user
  def edit
    @user = find_user_by_id
  end

  # udate the user
  def update
  end

  # show one user
  def show
    find_user_by_id
  end

  # delete the user
  def destroy
  end

  private

  def find_user_by_id
    user_id = params[:id]
    @user = User.find_by_id(user_id)
  end

end