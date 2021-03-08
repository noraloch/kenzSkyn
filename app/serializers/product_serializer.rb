class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :category, :brand, :image, :description, :link, :skin_attribute
  has_many :ingredients
end
