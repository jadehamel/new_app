json.extract! soup, :id, :name, :description, :created_at, :updated_at
json.url soup_url(soup, format: :json)
