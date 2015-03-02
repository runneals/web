json.array!(@users) do |user|
  json.extract! user, :id, :provider, :uuid, :first_name, :last_name, :name, :email, :oauth_token, :role, :email_notifications, :oauth_expires_at
  json.url user_url(user, format: :json)
end
