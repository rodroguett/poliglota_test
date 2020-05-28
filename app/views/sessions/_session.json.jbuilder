json.extract! session, :id, :number, :date, :course_id, :created_at, :updated_at
json.url session_url(session, format: :json)
