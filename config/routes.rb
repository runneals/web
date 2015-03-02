Rails.application.routes.draw do
  resources :award_winners

  resources :awards

  resources :team_division_informations

  #Auth stuff
  get 'auth/:provider/callback', to: 'sessions#create'
  get 'auth/failure', to: redirect('/')
  get 'signout', to: 'sessions#destroy', as: 'signout'


  #resources
  resource :home, only: [:show]
  resources :users
  resources :teams
  resources :matches
  resources :divisions
  resources :events
  resources :seasons

  #root
  root to: "home#show"
end
