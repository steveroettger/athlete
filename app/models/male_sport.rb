class MaleSport < ActiveRecord::Base
  attr_accessible :image_url, :title
  
  def to_param
		"#{id} #{title}".parameterize
	end
end
