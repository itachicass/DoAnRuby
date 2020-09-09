class CreateCustoms < ActiveRecord::Migration[5.2]
  def change
    create_table :customs do |t|
      t.string :tenkh
      t.string :sdt
      t.date :ngsinh
      t.string :gioitinh
      t.string :email
      t.string :diachi
      t.timestamps
    end
  end
end
