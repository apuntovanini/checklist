json.array!(@lists) do |list|
  json.extract! list, :id, :name, :description, :user_id, :published_at, :items_count, :clauses_count, :downloads_count
  json.url list_url(list, format: :json)
end
