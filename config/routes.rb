Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :farms, only: %i[show]
  # Defines the root path route ("/")
  # root "articles#index"

  root to: "farms#index"
  resources :farms, only: :index
end
