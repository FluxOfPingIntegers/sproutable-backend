class UsersController < ApplicationController

    def create
      user = User.new(user_params)
      if user.save
        render json: {user: user, token: encode_token(user.id)}
      else
        render json: {errors: user.errors.full_messages}, status: :unprocessable_entity
      end
    end

    private

    def user_params
      params.permit(:username, :name, :email, :password, :zipcode, :venmoname)
    end
end
