class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.integer :makh
      t.date :ngaymua
      t.integer :tongtien
      t.string :tinhtrang
      t.string :ghichu
      t.timestamps
    end
  end
end
