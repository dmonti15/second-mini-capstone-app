class Plant < ApplicationRecord
  belongs_to :supplier
  has_many :images
  has_many :orders

  has_many :category_plants
  has_many :categories, through: :category_plants
  # def sale_message
  #   if price.to_i < 60
  #     return "Discount Item!"
  #   else
  #     return "Everyday Value"
  #   end
  # end

#   def tax
#     return price * 0.09
#   end

#   def total
#     return price + tax
#   end

  # def sale?
  #   return price < 60
  # end


  # def supplier
  #   Supplier.find_by(id: self.supplier_id)
  # end

end
