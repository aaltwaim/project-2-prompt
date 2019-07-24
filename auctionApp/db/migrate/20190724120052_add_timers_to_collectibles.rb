class AddTimersToCollectibles < ActiveRecord::Migration[5.2]
  def change
    add_column :collectibles, :timer, :integer
  end
end
