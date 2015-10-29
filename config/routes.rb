Rails.application.routes.draw do
<<<<<<< Updated upstream
  devise_for :users, :controllers => { registrations: 'registrations' }
=======
  get 'beers/index'

  get 'beers/show'

>>>>>>> Stashed changes
  resources :posts

  root to: "posts#index"
end
