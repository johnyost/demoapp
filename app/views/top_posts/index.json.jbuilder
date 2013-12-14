json.array!(@top_posts) do |top_post|
  json.extract! top_post, :post, :subPostsCount, :subPostsScore
  json.url top_post_url(top_post, format: :json)
end