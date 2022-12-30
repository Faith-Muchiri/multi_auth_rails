class PatientsController <  UsersController
  def create
    super
  end

  private
  def user_params
    params.permit(:name, :password, :date_of_birth)
  end
end
