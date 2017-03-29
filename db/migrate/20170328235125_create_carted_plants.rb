class CreateCartedPlants < ActiveRecord::Migration[5.0]
  def change
    create_table :carted_plants do |t|
      t.integer :user_id
      t.integer :plant_id
      t.integer :quantity
      t.string :status
      t.integer :order_id

      t.timestamps
    end
  end
end
