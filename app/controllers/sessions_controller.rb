class SessionsController < Devise::SessionsController
  # protect_from_forgery with: :null_session
  skip_before_action :verify_authenticity_token


  def create
    p sign_in_params[:email]
    p "hello"
    p sign_in_params
    p params


    user = User.find_by_email(sign_in_params[:email])
    p user 
    p user.valid_password?(sign_in_params[:password])
    if user && user.valid_password?(sign_in_params[:password])
      @current_user = user
    else
      render json: { errors: { 'email or password' => ['is invalid'] } }, status: :unprocessable_entity
    end
  end
end