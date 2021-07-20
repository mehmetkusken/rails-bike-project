class CreateBicycles < ActiveRecord::Migration[6.1]
  def change
    create_table :bicycles do |t|
      t.string :brand
      t.integer :wheel_size
      t.string :color
      t.integer :price
      t.string :urlpicture

      t.timestamps
    end
  end
end
