json.array!(@locations) do |location|
  json.extract! location, :id, :school_id, :address_1, :address_2, :city, :province, :postal_code, :country
  json.url location_url(location, format: :json)
end
