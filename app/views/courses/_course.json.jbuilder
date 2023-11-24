json.extract! course, :id, :title, :desc, :created_at, :updated_at
json.url course_url(course, format: :json)
