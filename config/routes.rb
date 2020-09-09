Rails.application.routes.draw do
  get 'jets/index'
  get 'jets/show'
  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'
  devise_for :users
  root to: 'pages#home'
  
  resources :bookings, except: [ :index, :destroy ]
  resources :jets, except: [:destroy]
end
