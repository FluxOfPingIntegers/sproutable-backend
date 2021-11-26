class Item < ApplicationRecord

  belongs_to :product
  belongs_to :cart
  belongs_to :user, through: :cart
  belongs_to :order
  belongs_to :vendor, through: :order
  belongs_to :stall
end
