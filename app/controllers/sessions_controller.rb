class SessionsController < ApplicationController

  def create
    user = User.find_by_username(params[:username])
    if user && user.authenticate(params[:password])
      render json: {user: user, token: encode_token(user.id), vendor: (!!user.vendor ? user.vendor : false)}
    else
      render json: user.errors.full_messages, status: :forbidden
    end
  end

  def autologin
    user = logged_in_user
    vendor = (!!user.vendor ? user.vendor : false)
    render json: {user: user, token: encode_token(user.id), vendor: vendor}
  end

end
