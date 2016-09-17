json.extract! booking, :id, :name, :email, :phone, :day_in, :day_out, :country, :rooms, :persons, :airport_taxi, :specifications, :created_at, :updated_at
json.url booking_url(booking, format: :json)