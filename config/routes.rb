Rails.application.routes.draw do
<<<<<<< Updated upstream
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
=======
  devise_for :users
  get 'foods/index'
  root to: "foods#index"
>>>>>>> Stashed changes
end
