class Api::SessionsController < ApplicationController
  def create
    member = Member.where(email: params[:email]).first

    if member&.valid_password?(params[:password])
      render json: member.as_json(only: [:email, :authentication_token]), status: :created
    else
      head(:unauthorized)
    end
  end

  def destroy
    current_member&.authentication_token = nil

    # current_member.save ? head(:ok) : head(:unauthorized)

     if current_member.save
       head(:ok)
     else
       head(:unauthorized)
    end
  end

end


# apple_stock > 1 ? :eat_apple : :buy_apple