json.extract! dvd, :id, :title, :year, :number, :description, :image, :link, :created_at, :updated_at
json.url dvd_url(dvd, format: :json)
