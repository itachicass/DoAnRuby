class CreateOrderDetails < ActiveRecord::Migration[5.2]
  def change
    create_table :order_details do |t|
      t.integer :sohd
      t.integer :masach
      t.integer :makm
      t.integer :dongia
      t.integer :soluong
      t.integer :thanhtien
      t.timestamps
    end
  end
end
