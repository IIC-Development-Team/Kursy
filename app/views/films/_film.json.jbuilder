json.extract! film, :id, :title, :desc, :video_url, :created_at, :updated_at
json.url film_url(film, format: :json)
