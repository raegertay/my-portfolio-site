class UsersController < ApplicationController

  def index
    # Show all the users
  end

  def new
    # Show a HTML form for creating a new user
    @user = User.new
  end

  def create
    # Create a new user and redirect to GET
    # byebug # rails s webrick
    @user = User.new(user_params)
    @user.save
    redirect_to new_user_path
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :age, :next_of_kin)
  end

end
