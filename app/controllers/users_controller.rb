class UsersController < ApplicationController
  def index
    render json: User.all.to_a
  end

  def create
    @user = User.new(user_params)
    if @user
      @user.save!
      render json: { message: "Success" }, status: 200
    end

    render json: { message: "Create Failed" }, status: 400
  end

  def show
    render json: User.find(params[:id] || params[:email])
  end

  private

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end
end
