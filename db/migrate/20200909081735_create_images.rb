class CreateImages < ActiveRecord::Migration[5.2]
  def change
    create_table :images do |t|
      t.integer :masach
      t.string :link
      t.timestamps
    end
  end
end
