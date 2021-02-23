class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :password_digest, :first_name, :last_name, :age, :oily_skin, :dry_skin, :combination_skin, :acne
end
