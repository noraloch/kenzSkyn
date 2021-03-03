class Recommendation < ApplicationRecord
    belongs_to :product
    belongs_to :user

    validates :product_id, uniqueness: { scope: :user_id }
end
