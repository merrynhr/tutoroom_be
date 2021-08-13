class SessionsController < Devise::SessionsController
  # protect_from_forgery with: :null_session, if: ->{request.format.json?}
  # skip_before_action :verify_authenticity_token


  def create
    p '000000000'
    p params[:email]
    p '111111111'
    p params
    p '222222222'

    user = User.find_by_email(params[:email])
    p user 
    p '333333333'
    p user.valid_password?(params[:password])
    if user && user.valid_password?(params[:password])
      @current_user = user
    else
      render json: { errors: { 'email or password' => ['is invalid'] } }, status: :unprocessable_entity
    end
  end
end