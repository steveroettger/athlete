class User < ActiveRecord::Base
  attr_accessible :name, :school_year, :location, :high_school, :goal, :fb_link, :flickr_link, 
                  :youtube_link
  
  
  def self.from_omniauth(auth)
    where(auth.slice(:provider, :uid)).first_or_initialize.tap do |user|
      user.provider = auth.provider
      user.uid = auth.uid
      user.first_name = auth.info.first_name
      user.last_name = auth.info.last_name
      user.name = auth.info.name
      user.username = auth.extra.raw_info.username
      user.email = auth.info.email
      user.gender = auth.extra.raw_info.gender
      #user.location = auth.info.location
      user.fb_link = auth.extra.raw_info.link
      user.profile_image = auth.info.image
      user.oauth_token = auth.credentials.token
      user.oauth_expires_at = Time.at(auth.credentials.expires_at)
      user.save!
    end
  end
  
  def to_param
		"#{id} #{username}".parameterize
	end
  
end
