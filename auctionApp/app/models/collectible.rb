class Collectible < ApplicationRecord
    belongs_to :user
    has_many :auctions, through: :appointments
end
