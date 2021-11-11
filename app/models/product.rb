class Product < ApplicationRecord

  belongs_to :vendor
  belongs_to :event, through: :vendor
  has_many :items
end
