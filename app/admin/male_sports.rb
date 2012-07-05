ActiveAdmin.register MaleSport do
  menu :priority => 2
 
  index do
    column :id
    column :title do |male_sport|
      link_to male_sport.title, [:admin, male_sport]
    end
    column :image_url
    default_actions
  end
end