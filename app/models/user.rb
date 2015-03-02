class User < ActiveRecord::Base
  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_initialize do |user|
      user.provider = auth.provider
      user.uid = auth.uid
      user.first_name = auth.extra.raw_info.given_name
      user.last_name = auth.extra.raw_info.family_name
      user.name = auth.extra.raw_info.name
      user.email = auth.extra.raw_info.email
      user.oauth_token = auth.credentials.token
      user.oauth_expires_at = Time.at(auth.credentials.expires_at)
      user.role = 0
      user.uuid = SecureRandom.uuid
      user.save
    end
  end

  def update_auth_data(auth)
    self.oauth_token = auth.credentials.token
    self.oauth_expires_at = Time.at(auth.credentials.expires_at)
    self.name = auth.extra.raw_info.name
    self.first_name = auth.extra.raw_info.given_name
    self.last_name = auth.extra.raw_info.family_name
    if self.uuid.nil?
      self.uuid = SecureRandom.uuid
    end
    self.save
  end
end
