json.array!(@teachers) do |teacher|
  json.extract! teacher, :id, :name, :bio, :education, :honors, :experience
  json.url teacher_url(teacher, format: :json)
end
