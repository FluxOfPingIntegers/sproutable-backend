class Product < ApplicationRecord

  belongs_to :vendor
  has_many :items

  def display
    {
      name: self.name,
      category: self.category,
      description: self.description,
      image: self.image,
      price: self.price,
      quantity: self.quantity,
      vendor_id: self.vendor.id
    }
  end
end
