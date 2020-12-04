Rails.application.routes.draw do
  devise_for :users, controllers: {
    omniauth_callbacks: 'users/omniauth_callbacks',
    registrations: 'users/registrations'
  }
  root to: "foods#index"
  resources :foods do
    resources :comments, only: [:show, :create]
  end
  resources :users, only: :new
end