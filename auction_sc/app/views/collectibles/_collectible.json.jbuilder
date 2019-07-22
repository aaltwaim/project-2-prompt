json.extract! collectible, :id, :name, :mintage, :current_bid, :img, :created_at, :updated_at
json.url collectible_url(collectible, format: :json)
