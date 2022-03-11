Rails.application.routes.draw do
  root to: "games#index"
  resources :games
  devise_for :users

  get '/addresses', to: 'addresses#index'
  get '/addresses/new', to: 'addresses#new'
  get '/addresses/:id', to: 'addresses#show', as: "address"
  post '/addresses', to: 'addresses#create'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
