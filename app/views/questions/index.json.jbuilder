json.array!(@questions) do |question|
  json.extract! question, :title, :body, :votes
  json.url question_url(question, format: :json)
end
