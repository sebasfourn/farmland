Rails.application.routes.draw do
  devise_for :users

  root to: "farms#index"

  resources :farms, only: [:index, :show]
  resources :orders, only: %i[index show]

end
