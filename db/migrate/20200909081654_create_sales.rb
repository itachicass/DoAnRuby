class CreateSales < ActiveRecord::Migration[5.2]
  def change
    create_table :sales do |t|
      t.integer :phantram
      t.date :thoigianBD
      t.date :thoigianKT
      t.timestamps
    end
  end
end
