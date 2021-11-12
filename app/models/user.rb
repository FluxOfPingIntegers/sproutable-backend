class User < ApplicationRecord
  validates :username, :email, presence: true, uniqueness: true

  has_secure_password
  has_one :vendor
  has_many :orders
  has_many :carts
end
