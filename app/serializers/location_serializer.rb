class LocationSerializer < ActiveModel::Serializer
  attributes :id, :usda_id, :yelp_id, :name, :description, :address, :zipcode, :image, :hours, :fee, :pass
end
