class ApplicationController < ActionController::API

  def logged_in_user
    User.find(decoded_token["user_id"])
  end

  def encode_token(user_id)
    JWT.encode({user_id: user_id}, ENV["JWT_SALT"])
  end


  private

  def decoded_token
    JWT.decode(get_token, ENV["JWT_SALT"])[0]
  end

  def get_token
    request.headers["Authorization"]
  end
end
