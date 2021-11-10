class OrderSerializer < ActiveModel::Serializer
  attributes :id, :total, :date
end
