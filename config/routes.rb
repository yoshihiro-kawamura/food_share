Rails.application.routes.draw do
  devise_for :users
  root to: "foods#index"
  resources :foods do
    resources :comments, only: [:show, :create]
  end
  root 'users#index'  
  resources :users, only: :new
end