json.extract! house, :id, :name, :location, :price, :rooms, :people_per_room, :created_at, :updated_at
json.url house_url(house, format: :json)