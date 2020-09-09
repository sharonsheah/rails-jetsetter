Rails.application.routes.draw do
  get 'jets/index'
  get 'jets/show'
  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'
  devise_for :users
  root to: 'pages#home'
  
  resources :users do
    resources :dashboards, only: [ :index ]
  end

  resources :bookings, except: [ :create, :index, :destroy ]

  resources :jets, except: [:destroy] do
    resources :bookings, only: [ :create ]
  end
end
