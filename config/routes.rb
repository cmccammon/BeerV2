Rails.application.routes.draw do

  get 'profile/index'

  get 'profile/show'

  get 'welcome/index'

  devise_for :users, :controllers => { registrations: 'registrations' }

  get 'beers/index'
  get 'beers/show'
  resources :posts

  get "/welcome", to: "welcome#index", as: :welcome_page

  root to: "welcome#index"
end
