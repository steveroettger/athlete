class User < ActiveRecord::Base
  #RELATIONSHIPS
  has_many :sports
  has_many :fans, foreign_key: "follower_id", dependent: :destroy
  has_many :followed_users, through: :fans, source: :followed
  has_many :reverse_fans, foreign_key: "followed_id",
                                   class_name:  "Fan",
                                   dependent:   :destroy
  has_many :followers, through: :reverse_fans, source: :follower
  
  #ALLOWS THE USER MODEL TO BE SEARCHABLE THROUGH TIRE + ELASTICSEARCH
  include Tire::Model::Search
  include Tire::Model::Callbacks
  
  def self.search(params)
    tire.search(load: true, page: params[:page], per_page: 10) do
      query { string params [:query], default_operator: "AND" } if params[:query].present?
      sort { by :last_name, "desc" }
    end
  end
  
  #CREATES THE UNIQUE SLUG FOR EACH USER
  extend FriendlyId
  friendly_id :username
  
  #DEFINES WHAT IS ACCESSIBLE TO EDIT ON USER SIDE
  attr_accessible :name, :email,
                  :school_year, :location, :high_school, :goal, :fb_link, :instagram_link, 
                  :youtube_link, :background_image, :remote_image_url, :highlight_one, 
                  :highlight_two, :highlight_three
  
  #CARRIERWAVE IMAGE UPLOADER FOR USER BACKGROUND
  mount_uploader :background_image, ImageUploader

  #VALIDATION SECTION
  validates :goal, length: { maximum: 150 }
  
  #DEFINES THE 'FAN' (FOLLOW/FOLLOWER) LOGIC
  def following?(other_user)
    fans.find_by_followed_id(other_user.id)
  end

  def follow!(other_user)
    fans.create!(followed_id: other_user.id)
  end
  
  def unfollow!(other_user)
    fans.find_by_followed_id(other_user.id).destroy
  end
  
  #DEFINES INFORMATION BEING PULLED FROM FACEBOOK OMNIAUTH
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
end
