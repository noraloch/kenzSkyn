class RecommendationSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :product_id, :saved
end
