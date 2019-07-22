class CreateCoins < ActiveRecord::Migration[5.2]
  def change
    create_table :coins do |t|
      t.string :name
      t.integer :mintage
      t.string :price
      t.string :detail

      t.timestamps
    end
  end
end
