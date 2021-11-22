class User < ApplicationRecord
  validates :username, presence: true, uniqueness: true

  has_secure_password
  has_one :vendor
  has_many :orders
  has_many :carts
end
