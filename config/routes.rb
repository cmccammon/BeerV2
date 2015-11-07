Rails.application.routes.draw do

  post '/rate' => 'rater#create', :as => 'rate'
  devise_for :users, :controllers => { registrations: 'registrations' }

  get "welcome", to: "welcome#index", as: :welcome

  get 'profile/index'

  get 'profile/:id', to: 'profile#show', as: :profile_show


  get 'beers',     to: "beers#index", as: :beers
  get 'beers/:id', to: "beers#show", as: :beers_show

  get 'breweries',     to: "breweries#index", as: :breweries
  get 'breweries/:id', to: "breweries#show", as: :breweries_show

  resources :posts



  root "welcome#index"
end
