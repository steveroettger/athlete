Athlete::Application.routes.draw do
  root to: 'pages#home'
  match '/about',   to: 'pages#about'
  match '/faq',     to: 'pages#faq'
  match '/terms',   to: 'pages#terms'
  match '/privacy', to: 'pages#privacy'
  match '/contact', to: 'pages#contact'
  

end
