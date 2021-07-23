class User < ApplicationRecord
    has_many :payments
    has_many :bicycles, through: :payments
    has_secure_password
    validates :username , :email, uniqueness: true
    validates :username, :email, presence: true  
  
end
