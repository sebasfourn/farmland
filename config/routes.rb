Rails.application.routes.draw do
  devise_for :users

  root to: "farms#index"

  resources :farms, only: %i[index show] do
    member do
      post :favorite
      post :unfavorite
    end
  end

  resources :orders, only: %i[index show create] do
    resources :order_products, only: %i[create]
  end
  resources :trips, only: %i[index show create update]
  get "/favorites", to: "farms#favorites"
end
