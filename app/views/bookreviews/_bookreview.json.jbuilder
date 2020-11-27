json.extract! bookreview, :id, :user_id, :book_id, :review, :created_at, :updated_at
json.url bookreview_url(bookreview, format: :json)
