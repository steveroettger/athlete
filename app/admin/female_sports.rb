ActiveAdmin.register FemaleSport do
  menu :priority => 3
  
  index do
    column :id
    column :title do |female_sport|
      link_to female_sport.title, [:admin, female_sport]
    end
    column :image_url
    default_actions
  end
end
