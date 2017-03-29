class Supplier < ApplicationRecord
  has_many :plant
  # def products
  #   Product.where(supplier_id: self.id)
  # end

end
