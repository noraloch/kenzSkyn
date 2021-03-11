class Ingredient < ApplicationRecord
    has_many :product_ingredients
    has_many :products, through: :product_ingredients
    has_many :ing_skin_attrs
    has_many :skin_attributes, through: :ing_skin_attrs

    validates :name, presence: true, allow_blank: false
end
