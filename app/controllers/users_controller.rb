class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def show
    @user = User.find(params[:id])
  end

  def create
    user = User.new(user_params)
    user.save!
    redirect_to user_path(user)
  end

  def nickname
    @users = User.all
      if @users == nil
        User.new(nickname: "Crapouac", email: "hugo.antonietti@hotmail.fr")
      else
      @users.each |user| do
        user.nickname
      end
    end
  end

  private

  def user_params
    params.require(:user).permit(:nickname, :email)
  end
end
