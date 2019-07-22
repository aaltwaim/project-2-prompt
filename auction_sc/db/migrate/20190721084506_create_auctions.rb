class CreateAuctions < ActiveRecord::Migration[5.2]
  def change
    create_table :auctions do |t|
      t.integer :collectible_id
      t.integer :number_of_bidding
      t.integer :previous_bidding
      t.integer :current_bidding

      t.timestamps
    end
  end
end
