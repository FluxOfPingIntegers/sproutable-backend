class Order < ApplicationRecord

  belongs_to :event
  belongs_to :vendor
  belongs_to :user
  has_many :items
end
