json.array!(@composers) do |composer|
  json.extract! composer, :id, :name, :dob, :bio
  json.url composer_url(composer, format: :json)
end
