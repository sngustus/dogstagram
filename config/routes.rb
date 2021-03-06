Rails.application.routes.draw do
  
  resources :users, only: [:new, :create] 
  resources :posts

  root 'sessions#welcome'

  get 'users', to: 'users#index'

  get 'login', to: 'sessions#new'

  get 'posts', to: 'posts#new'


  
  post 'posts', to: 'posts#create'
  
  post 'login', to: 'sessions#create'



  delete 'logout', to: 'sessions#destroy'  
  
  get 'welcome', to: 'sessions#welcome'

  

  get 'authorized', to: 'sessions#page_requires_login'

end
