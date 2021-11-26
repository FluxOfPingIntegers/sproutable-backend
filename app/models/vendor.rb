class Vendor < ApplicationRecord

  has_secure_password
  belongs_to :user
  has_many :products
  has_many :orders
  has_many :stalls
  has_many :events, through: :stalls
end
