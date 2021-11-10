class ItemSerializer < ActiveModel::Serializer
  attributes :id, :name, :category, :description, :image, :price, :quantity
end
