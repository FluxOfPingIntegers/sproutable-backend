class Event < ApplicationRecord

  belongs_to :location
  has_many :vendors, through: :stalls
  has_many :products, through: :vendors
  has_many :orders
end
