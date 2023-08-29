Rails.application.routes.draw do
  devise_for :users

  root to: "farms#index"

  resources :farms, only: %i[index show]
  resources :orders, only: %i[index show]
  resources :trips, only: %i[index show update]
end
