Rails.application.routes.draw do
  resources :events

  resources :seasons

#Auth stuff
  get 'auth/:provider/callback', to: 'sessions#create'
  get 'auth/failure', to: redirect('/')
  get 'signout', to: 'sessions#destroy', as: 'signout'

  #resources
  resources :sessions, only: [:create, :destroy]
  resource :home, only: [:show]

  #root
  root to: "home#show"
end
