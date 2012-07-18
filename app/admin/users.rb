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
  
  show :title => :name do |user|
    attributes_table do
      row :id
      row :provider
      row :uid
      row :name
      row :first_name
      row :last_name
      row :username
      row :email
      row :gender
      row :school_year
      row :location
      row :high_school
      row :profile_image
      row :fb_link
      row :flickr_link
      row :youtube_link
      row :goal
      row :oauth_token
      row :oauth_expires_at
      row :created_at
      row :updated_at
    end
    active_admin_comments
  end
end
