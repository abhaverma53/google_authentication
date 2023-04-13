Rails.application.routes.draw do
  # root to: 'application#welcome'
  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'
  get '/login', to: 'sessions#new'
  get '/login', to: 'sessions#create'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'
  post '/logout', to: 'sessions#destroy'
  # get '/auth/:provider/callback', to: 'sessions#omniauth'
  match '/auth/:provider/callback', :to => 'sessions#omniauth', via: [:get, :post]
  match '/auth/failure', :to => 'sessions#failure', via: [:get, :post]
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
   root to: 'application#welcome'
end
