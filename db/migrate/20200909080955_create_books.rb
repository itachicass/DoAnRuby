class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.string :tensach
      t.string :tacgia
      t.string :nxb
      t.string :theloai
      t.integer :dongia
      t.integer :soluong
      t.string :hinhanh
      t.text :mota
      t.timestamps
    end
  end
end
