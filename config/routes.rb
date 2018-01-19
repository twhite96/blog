Rails.application.routes.draw do
  root 'posts#index', as: 'home'
  
  # Using the GET request to request info from 
  # the pages controller and rendering the 
  # About page
  get 'about' => 'pages#about', as: 'about'
  get 'users'  => 'users#index', as: 'users'
  
  # Maps HTTP verb with controller action
  resources :posts
  resources :users
end

  