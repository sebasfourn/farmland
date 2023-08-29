Rails.application.routes.draw do
  devise_for :users

  root to: "farms#index"
  resources :farms, only: :index
end
