class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    @user.save

    redirect_to trips_path(@user)
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)

    redirect_to trips_path(@user)
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy

    redirect_to trips_path
  end

  private

  def user_params
    params.require(:user).permit(:firstname, :lastname, :phone, :password, :email)
  end

end
