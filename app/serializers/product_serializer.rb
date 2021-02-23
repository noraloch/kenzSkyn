class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :category, :brand, :description, :link, :skin_attribute
end
