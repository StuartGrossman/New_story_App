json.array!(@stories) do |story|
  json.extract! story, :id, :story_title, :story_address, :longitude, :latitude
  json.url story_url(story, format: :json)
end
