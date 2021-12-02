class Vendor < ApplicationRecord

  belongs_to :user
  has_many :products
  has_many :orders
  has_many :stalls
  has_many :events, through: :stalls

  def display
    {
      id: self.id,
      username: self.username,
      name: self.name,
      email: self.email,
      image: self.image,
      zipcode: self.zipcode,
      venmoname: self.venmoname,
      website: self.website,
      user_id: self.user_id
    }
  end
end
