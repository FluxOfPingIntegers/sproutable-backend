class UserSerializer < ActiveModel::Serializer
  attributes :username, :name, :email, :image, :zipcode, :venmoname
end
