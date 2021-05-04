class UserController < ApplicationController
  def new
    # @user = User.new
  end

  def create
    #@user = User.new(username: params[:username], email: params[:email], password: params[:password])
    @user = User.new(user_params)

    if @user.save
      raise
      redirect_to new_user_path
    else
      raise
      render :new
    end
  end

  private

  def user_params
    params.require(:user).permit(:username, :email, :password)
  end
end
