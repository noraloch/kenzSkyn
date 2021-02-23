class SkinAttribute < ApplicationRecord
    has_many :ing_skin_attrs
    has_many :ingredients, through: :ing_skin_attrs
end
