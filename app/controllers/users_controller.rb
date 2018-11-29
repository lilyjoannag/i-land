class UsersController < ApplicationController
  def show
    authorize current_user
  end

  def edit
    @user = current_user
    authorize current_user
  end

  def update
    authorize current_user
    @user = current_user
    @user.update(user_params)
    redirect_to user_path(current_user)
  end

  def user_params
    params.require(:user).permit(:first_name, :last_name, :photo_user)
  end
end
