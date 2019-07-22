class AddUserIdToCollectibles < ActiveRecord::Migration[5.2]
  def change
    add_column :collectibles, :user_id, :integer
  end
end
