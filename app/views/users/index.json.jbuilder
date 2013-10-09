json.array!(@users) do |user|
  json.extract! user, :username, :email, :password
  json.url user_url(user, format: :json)
end
