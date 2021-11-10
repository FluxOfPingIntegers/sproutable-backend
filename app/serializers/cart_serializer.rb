class CartSerializer < ActiveModel::Serializer
  attributes :id, :name, :ordered, :total
end
