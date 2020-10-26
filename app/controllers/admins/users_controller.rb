class Admins::UsersController < Devise::RegistrationsController
  def create
    user = User.new user_params
    if user.save
      render json: {
        messages: "Sign Up Successfully",
        is_success: true,
        data: {user: user}
      }, status: :ok
    else
      render json: {
        messages: "Sign Up Failded",
        is_success: false,
        data: { errors: user.errors.full_messages }
      }, status: :unprocessable_entity
    end
  end

  private
  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end
end
