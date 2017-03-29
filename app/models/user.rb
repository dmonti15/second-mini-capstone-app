class User < ApplicationRecord
  has_secure_password
  
  has_many :orders
  has_many :carted_plants
  has_many :plants, through: :carted_plants
end

