json.extract! post, :id, :title, :content, :post_status_id, :post_category_id, :created_at, :updated_at
json.url post_url(post, format: :json)
