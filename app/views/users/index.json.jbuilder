json.array!(@users) do |user|
  json.extract! user, :user_name, :password, :email
  json.url user_url(user, format: :json)
end
