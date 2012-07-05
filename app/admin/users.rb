ActiveAdmin.register User do
  menu :priority => 1
      
  index do
    column :id
    column :name do |male_sport|
      link_to male_sport.name, [:admin, male_sport]
    end
    column :email
    column :gender
    column :school_year
    column :location
    column :high_school
    column :fb_link
    column :flickr_link
    column :youtube_link
    default_actions
  end
end
