Rails.application.routes.draw do

  devise_for :users, :controllers => { registrations: 'registrations' }

  get 'beers/index'
  get 'beers/show'

  resources :posts

  root to: "posts#index"
end
