Rails.application.routes.draw do
  devise_for :users

  root to: "farms#index"

  resources :farms, only: %i[index show] do
    member do
      post :favorite
      post :unfavorite
    end
  end

  resources :orders, only: %i[index show]
  resources :trips, only: %i[index show create update]
  get "/favorites", to: "farms#favorites"
end
