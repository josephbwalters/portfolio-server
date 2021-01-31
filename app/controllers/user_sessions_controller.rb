class UserSessionsController < ApplicationController
  def create
    @user = login(params[:email], params[:password])

    render json: @user if @user
    render json: { message: "Incorrect email or password!"}, status: 403
  end

  def destroy
  end
end
