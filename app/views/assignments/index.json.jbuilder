json.array!(@assignments) do |assignment|
  json.extract! assignment, :id, :teacher_id, :student_id, :song_id, :tempo, :is_recording_required
  json.url assignment_url(assignment, format: :json)
end
