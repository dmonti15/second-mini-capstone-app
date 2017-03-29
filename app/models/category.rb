class Category < ApplicationRecord
  has_many :category_plants
  has_many :plants, through: :category_plants
end
