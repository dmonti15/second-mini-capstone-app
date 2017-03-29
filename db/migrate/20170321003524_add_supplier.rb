class AddSupplier < ActiveRecord::Migration[5.0]
  def change
    add_column :plants, :supplier_id, :integer
  end
end
