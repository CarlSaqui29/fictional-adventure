json.extract! article_config, :id, :title, :description, :created_at, :updated_at
json.url article_config_url(article_config, format: :json)
