class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :first_name, :last_name, :age, :oily_skin, :dry_skin, :combination_skin, :acne, :sport_practice
  has_many :recommendations
  has_one :photo
  has_many :products
end
