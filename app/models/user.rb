class User < ApplicationRecord
    has_many :recommendations
    has_many :products, through: :recommendations
    
    has_secure_password
    
    validates :username, presence: true
    validates :username, uniqueness: {case_sensitive: false}
end
