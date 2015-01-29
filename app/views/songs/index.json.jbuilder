json.array!(@songs) do |song|
  json.extract! song, :id, :book_id, :start_page, :end_page, :title, :composer_id
  json.url song_url(song, format: :json)
end
