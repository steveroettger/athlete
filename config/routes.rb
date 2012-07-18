Athlete::Application.routes.draw do
  
  resources :sports

  ActiveAdmin.routes(self)

  devise_for :admin_users, ActiveAdmin::Devise.config

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
  
  devise_scope :admin_user do
    #Sports
    resources :male_sports
    resources :female_sports
  end
end
