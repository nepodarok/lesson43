json.extract! dish, :id, :name, :desc, :price, :shop_id, :created_at, :updated_at
json.url dish_url(dish, format: :json)
