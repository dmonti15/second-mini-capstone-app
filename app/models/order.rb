class Order < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :plants, optional: true

  belongs_to :user
  has_many :carted_plants
  has_many :plants, through: :carted_plants
end
