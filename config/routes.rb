Athlete::Application.routes.draw do

  #ACTIVE ADMIN ROUTES
  ActiveAdmin.routes(self)
  devise_for :admin_users, ActiveAdmin::Devise.config
  devise_scope :admin_user do
    #Sports
    resources :sports
  end
  
  #PUBLIC SITE PAGES
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
  
  #USERS LOGIC
  resources :users do
    member do
      get :following, :followers
    end
  end
  match '/users/:id/dashboard', to: "users#dashboard"
  
  #FAN FUNCTION ROUTES
  resources :fans, only: [:create, :destroy]  
end
