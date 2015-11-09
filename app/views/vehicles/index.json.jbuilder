json.array!(@vehicles) do |vehicle|
  json.extract! vehicle, :id, :color, :condition, :price, :category_id
  json.url vehicle_url(vehicle, format: :json)
end
