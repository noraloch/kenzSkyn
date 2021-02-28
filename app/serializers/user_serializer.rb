class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :image, :first_name, :last_name, :age, :oily_skin, :dry_skin, :combination_skin, :acne, :sport_practice
end
