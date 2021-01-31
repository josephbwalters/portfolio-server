class UserSessionsController < ApplicationController
  skip_before_action :require_login, only: [:create]

  def create
    @user = login(params[:email], params[:password])

    if @user
      render json: @user
    else
      render json: { success: false, message: 'Incorrect email or password!' }, status: 403
    end
  end

  def destroy
    logout
    render json: { success: true, message: 'Success' }, status: 200
  end
end
