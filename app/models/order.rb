class Order < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :plants, optional: true 
end
