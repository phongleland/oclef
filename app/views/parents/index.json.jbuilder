json.array!(@parents) do |parent|
  json.extract! parent, :id, :name, :telephone, :location_id
  json.url parent_url(parent, format: :json)
end
