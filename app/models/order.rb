class Order < ApplicationRecord
  validates :total, :date, presence: true
  validates :total, numericality: {greater_than: 0}

  belongs_to :event
  belongs_to :vendor
  belongs_to :user
  has_many :items
end
