class ProductIngredientSerializer < ActiveModel::Serializer
  attributes :id, :product_id, :ingredient_id
end
