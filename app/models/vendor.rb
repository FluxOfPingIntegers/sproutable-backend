class Vendor < ApplicationRecord

  belongs_to :user
  has_many :products
  has_many :orders
  has_many :stalls
  has_many :events, through: :stalls

  def display
    self.update_stalls
    {
      id: self.id,
      username: self.username,
      name: self.name,
      email: self.email,
      image: self.image,
      zipcode: self.zipcode,
      venmoname: self.venmoname,
      website: self.website,
      products: self.products,
      stalls: self.stalls,
      user_id: self.user_id
    }
  end

  def update_stalls
    stalls.each do |stall|
      event = stall.event
      if Date.parse(event.date) < Date.parse(stall.date)
        stall.destroy
      end
    end
    return stalls
  end
end
