class Auction < ApplicationRecord
    has_many :users
    has_many :collectibles, through: :users
end
