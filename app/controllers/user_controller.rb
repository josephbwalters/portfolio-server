class UserController < ApplicationController
  def index
    render json: User.all.to_a
  end

  def show
    render json: User.find(params[:id] || params[:email])
  end
end
