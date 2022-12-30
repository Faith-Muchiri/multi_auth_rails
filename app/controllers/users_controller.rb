class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def create
    user = User.new(user_params)
    if user
      render json: user, status: :created
    else
      render json: user.errors, status: :unprocessable_entity
    end
  end

  # private
  #   def user_params
  #     params.permit(:name, :password)
  #   end
end
