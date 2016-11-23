json.extract! signal_post, :id, :content, :userId, :created_at, :updated_at
json.url signal_post_url(signal_post, format: :json)