Rails.application.routes.draw do
  # deviseが提供するactionの内容を再設定する
  devise_for :users, controllers: {
    omniauth_callbacks: 'users/omniauth_callbacks',
    registrations: 'users/registrations'
  }
    resources :users, only: :new
    
  root to: "foods#index"
  resources :foods do
    resources :comments, only: [:show, :create]
  end
end