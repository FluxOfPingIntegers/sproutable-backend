class EventSerializer < ActiveModel::Serializer
  attributes :id, :usda_id, :yelp_id, :name, :description, :address, :zipcode, :hours, :fee, :pass
end
