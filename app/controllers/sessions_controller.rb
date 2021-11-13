class SessionsController < ApplicationController

  def create
    user = User.find_by_username(params[:username])
    if user && user.authenticate(params[:password])
      render json: {user: user, token: encode_token(user.id)}
    else
      render json: user.errors.full_messages, status: :forbidden
    end
  end

  def autologin
    render json: {user:}
  end

end
