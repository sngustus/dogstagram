Rails.application.routes.draw do
  
  resources :users, only: [:new, :create] 

  root 'sessions#welcome'

  get 'users', to: 'users#index'

  get 'login', to: 'sessions#new'

  
  
  post 'login', to: 'sessions#create'



  delete 'logout', to: 'sessions#destroy'  
  
  get 'welcome', to: 'sessions#welcome'

  

  get 'authorized', to: 'sessions#page_requires_login'

end
