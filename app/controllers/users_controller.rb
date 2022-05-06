class UsersController < ApplicationController

  before_action :set_user, only: [:show]

  def show
    @user
  end

  def edit
  end

  def update
    if current_user.update(user_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  private

  def user_params
    params.require(:user).permit(:nickname, :email, :category, :sub_category, :belongs)
  end

  def set_user
    @user = User.find([:id])
  end

end
