class Sport < ActiveRecord::Base
  #attr_accessible :user_id, :sport_id
  
  #RELATIONSHIPS
  has_and_belongs_to_many :users
  
  #DEFINES WHAT IS ACCESSIBLE THROUGH ACTIVE ADMIN
  attr_accessible :title, :image_url
end
