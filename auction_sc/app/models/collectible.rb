class Collectible < ApplicationRecord
    has_many :users
    has_many :auctions, through: :users
end
