class Collectible < ApplicationRecord
    belongs_to :user
    has_many :auctions, dependent: :destroy
    validates :name, :img, :current_bid, presence: true

end
