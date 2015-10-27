json.array!(@posts) do |post|
  json.extract! post, :id, :comment, :user_id, :beer_id, :location_id
  json.url post_url(post, format: :json)
end
