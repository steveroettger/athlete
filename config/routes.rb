Athlete::Application.routes.draw do
  
  root to: 'pages#home'
  match '/about',   to: 'pages#about'
  match '/faq',     to: 'pages#faq'
  match '/terms',   to: 'pages#terms'
  match '/privacy', to: 'pages#privacy'
  match '/contact', to: 'pages#contact'
  
  #Omniauth Login Routes/Redirects
  match 'auth/:provider/callback', to: 'sessions#create'
  match 'auth/failure', to: redirect('/')
  match 'signout', to: 'sessions#destroy', as: 'signout'
  
  #Users
  resources :users
  
  #Sports
  resources :male_sports
  resources :female_sports

end
