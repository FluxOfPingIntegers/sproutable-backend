class Image < ApplicationRecord

  def self.random_veggie
    pics = self.first.image_list.split(" ")
    pics.sample
  end

end
