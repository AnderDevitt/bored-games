json.extract! game, :id, :name, :condition, :min_player, :max_player, :price, :description, :user_id, :created_at, :updated_at
json.url game_url(game, format: :json)
