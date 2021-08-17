class UsersController < ApplicationController
  before_action :authenticate_user!

  def show
  end

  def update
    if current_user.update(user_params)
      render :show
    else
      render json: { errors: current_user.errors }, status: :unprocessable_entity
    end
  end

  private

  def user_params
    params.require(:user).permit(:fullname, :email, :password, :subject, :teacher)
  end
  

end

# def update_info
#   @user = User.find(params[:id])
#   if @user.update(user_params)
#     puts 'the user info successfully updated' #add whatever you want
#   else
#     puts 'failed'
#   end
# end