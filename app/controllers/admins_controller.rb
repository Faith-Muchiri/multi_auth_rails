class AdminsController <  UsersController
   def create
    super
  end


  private

  def user_params
    params.permit(:name, :password, :title, :role)
  end
end
