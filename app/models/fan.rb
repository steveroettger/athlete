class Fan < ActiveRecord::Base
  #RELATIONSHIPS
  belongs_to :follower, class_name: "User"
  belongs_to :followed, class_name: "User"
  
  #DEFINES WHAT IS ACCESSIBLE TO FORM A USER-to-USER FAN RELATIONSHIP
  attr_accessible :followed_id
  
  #VALIDATIONS
  validates :follower_id, presence: true
  validates :followed_id, presence: true
end
