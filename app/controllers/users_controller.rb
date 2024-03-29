class UsersController < ApplicationController
  before_action :set_user, only: %i[edit update]

  def edit
  end

  def update
    @user.update(user_params)
    redirect_to root_path
  end

  private

  def set_user
    @user = current_user
  end

  def user_params
    params.require(:user).permit(:first_name, :last_name, :photo)
  end
end
