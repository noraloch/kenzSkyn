class PhotoSerializer < ActiveModel::Serializer
  attributes :id, :image, :user_id
end
