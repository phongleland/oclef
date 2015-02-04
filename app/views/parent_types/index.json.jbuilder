json.array!(@parent_types) do |parent_type|
  json.extract! parent_type, :id, :name
  json.url parent_type_url(parent_type, format: :json)
end
