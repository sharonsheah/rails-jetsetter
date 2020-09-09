Rails.application.routes.draw do
  get 'jets/index'
  get 'jets/show'
  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'
  devise_for :users
  root to: 'pages#home'
  
  resources :bookings, except: [ :create, :index, :destroy ]
  # get '/jets', to: 'jets#index'
  # get '/jts/:id', to: "jets#show"
  resources :jets, except: [:destroy] do
    resources :bookings, only: [ :create ]
  end
end
