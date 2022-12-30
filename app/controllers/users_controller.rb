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
      # render json: { message: "User created successfully" }, status: :created
      render json: user, status: :created
    else
      render json: { errors: user.errors }, status: :unprocessable_entity
    end
  end

  private

  # Strong parameters to permit only the required attributes
  def user_params
    if params[:User][:role] == "Admin"
      params.permit(:name, :password, :role, :title)
    elsif params[:User][:role] == "Patient"
      params.permit(:name, :password, :role, :date_of_birth)
    else
      params.permit(:name, :password, :role, :speciality)
    end
  end
end




