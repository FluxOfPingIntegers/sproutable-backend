class User < ApplicationRecord

  has_secure_password
  has_one :vendor
  has_many :orders
  has_many :carts
end
