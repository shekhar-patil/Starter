class Customers::UsersController < Devise::RegistrationsController
  def create
    @user = User.new user_params
    respond_to do |format|
      if @user.save
        sign_in @user
        format.html { redirect_to root_path, message: 'User created Successfully' }
        format.json { render json: @user, status: :created }
      else
        format.html { render 'new'}
        format.json { render json: @user.errors.full_messages.uniq, status: :unprocessable_entity }
      end
    end
  end

  private
  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end
end
