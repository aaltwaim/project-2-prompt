class CreateCollectibles < ActiveRecord::Migration[5.2]
  def change
    create_table :collectibles do |t|
      t.string :name
      t.integer :mintage
      t.integer :current_bid
      t.string :img

      t.timestamps
    end
  end
end
