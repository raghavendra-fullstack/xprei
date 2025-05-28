json.extract! admin_exam, :id, :title, :description, :instructor_id, :duration_minutes, :max_attempts, :created_at, :updated_at
json.url admin_exam_url(admin_exam, format: :json)
