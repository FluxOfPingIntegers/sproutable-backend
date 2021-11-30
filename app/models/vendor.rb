class Vendor < ApplicationRecord

  belongs_to :user
  has_many :products
  has_many :orders
  has_many :stalls
  has_many :events, through: :stalls
end
