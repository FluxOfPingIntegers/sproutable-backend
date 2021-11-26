class Stall < ApplicationRecord

  belongs_to :event
  belongs_to :vendor
  has_many :items
end
