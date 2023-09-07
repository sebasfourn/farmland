Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  resources :farms, only: %i[index show] do
    member do
      post :favorite
      post :unfavorite
    end
  end

  resources :orders, only: %i[index show create update] do
    resources :order_products, only: %i[create]
  end
  resources :trips, only: %i[index show create update] do
    resources :messages, only: :create
  end

  get "/favorites", to: "farms#favorites"
end
