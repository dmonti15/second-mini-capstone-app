class CategoryPlant < ApplicationRecord
  belongs_to :plant
  belongs_to :category
end
