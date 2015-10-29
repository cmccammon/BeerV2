Rails.application.routes.draw do
<<<<<<< Updated upstream
<<<<<<< Updated upstream
  devise_for :users, :controllers => { registrations: 'registrations' }
=======
=======
>>>>>>> Stashed changes
  get 'beers/index'

  get 'beers/show'

<<<<<<< Updated upstream
>>>>>>> Stashed changes
=======
>>>>>>> Stashed changes
  resources :posts

  root to: "posts#index"
end
