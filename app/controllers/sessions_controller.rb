class SessionsController < Devise::SessionsController
  # protect_from_forgery with: :null_session, if: ->{request.format.json?}
  # skip_before_action :verify_authenticity_token


  def create
    user = User.find_by_email(params[:email])

    if user && user.valid_password?(params[:password])
      @current_user = user
    else
      render json: { errors: { 'email or password' => ['is invalid'] } }, status: :unprocessable_entity
    end
  end
end