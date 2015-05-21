json.array!(@stories) do |story|
  json.extract! story, :id, :name, :description, :topic_id
  json.url story_url(story, format: :json)
end
