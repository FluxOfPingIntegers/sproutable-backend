class UsersController < ApplicationController

    def create
      user = User.new(user_params)
      if user.save
        render json: {user: user, token: encode_token(user.id), vendor: (!!user.vendor ? user.vendor.display : false)}
      else
        render json: {errors: "Invalid Username and/or Password"}, status: :unprocessable_entity
      end
    end

    def show
      user = (!!logged_in_user ? logged_in_user : User.find_by(username: user_params[:username])&.authenticate(user_params[:password]))
      vendor = (!!user.vendor ? user.vendor.display : false)
      if !!user
        render json: {
          username: user.username, 
          name: user.name, 
          email: user.email, 
          image: user.image, 
          zipcode: user.zipcode, 
          venmoname: user.venmoname,
          vendor: vendor}
      else
        render json: {errors: "Invalid Username and/or Password"}, status: :unprocessable_entity
      end
    end

    def update
      user = logged_in_user
      if user.update(user_params)
        render json: {
          username: user.username, 
          name: user.name, 
          email: user.email, 
          image: user.image, 
          zipcode: user.zipcode, 
          venmoname: user.venmoname,
          vendor: (!!user.vendor ? user.vendor.display : false)}
      else
        render json: {errors: "Invalid Update Entry"}, status: :forbidden
      end
    end

    private

    def user_params
      params.permit(:username, :name, :email, :password, :password_confirmation, :zipcode, :venmoname, :image)
    end
end
