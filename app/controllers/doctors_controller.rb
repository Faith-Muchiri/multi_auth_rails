class DoctorsController <  UsersController

  private

    def user_params
      params.permit(:name, :password, :speciality)
    end
end
