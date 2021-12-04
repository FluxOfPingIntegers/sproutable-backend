class Product < ApplicationRecord

  belongs_to :vendor
  has_many :items
end
