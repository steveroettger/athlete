ActiveAdmin.register Sport do
  menu :priority => 2

  index do
    column :id
    column :title do |sport|
      link_to sport.title, [:admin, sport]
    end
    column :image_url
    default_actions
  end
  
  show :title => :title do |sport|
    attributes_table do
      row :id
      row :title
      row :image_url
      row :created_at
      row :updated_at
    end
    active_admin_comments
  end
end
