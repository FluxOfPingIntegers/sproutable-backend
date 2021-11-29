class Item < ApplicationRecord

  belongs_to :product
  belongs_to :cart
  #belongs_to :user, through: :cart
  belongs_to :order
  #belongs_to :vendor, through: :product
  belongs_to :stall
  #belongs_to :event, through: :stall
end
