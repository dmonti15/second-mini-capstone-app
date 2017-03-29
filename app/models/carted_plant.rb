class CartedPlant < ApplicationRecord
  belongs_to :user
  belongs_to :plant
  belongs_to :order
end
