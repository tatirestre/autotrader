class CreateVehicles < ActiveRecord::Migration
  def change
    create_table :vehicles do |t|
      t.string :color
      t.string :condition
      t.float :price
      t.string :category_id

      t.timestamps null: false
    end
  end
end
