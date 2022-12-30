class DoctorsController <  UsersController
  def create
    super
  end
  
  private
    def user_params
      params.permit(:name, :password, :speciality)
    end
end
