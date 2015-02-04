json.array!(@addresses) do |address|
  json.extract! address, :id, :street_1, :street_2, :city, :province, :postal_code, :country
  json.url address_url(address, format: :json)
end
