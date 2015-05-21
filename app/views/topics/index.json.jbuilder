json.array!(@topics) do |topic|
  json.extract! topic, :id, :name, :slug, :description
  json.url topic_url(topic, format: :json)
end
