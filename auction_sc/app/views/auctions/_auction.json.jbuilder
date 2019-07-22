json.extract! auction, :id, :collectible_id, :number_of_bidding, :previous_bidding, :current_bidding, :created_at, :updated_at
json.url auction_url(auction, format: :json)
