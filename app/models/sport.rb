class Sport < ActiveRecord::Base
  #RELATIONSHIPS
  has_and_belongs_to_many :users
  
  #DEFINES WHAT IS ACCESSIBLE THROUGH ACTIVE ADMIN
  attr_accessible :title
end
