Rails.application.routes.draw do
  get 'foods/index'
  root to: "foods#index"
end
