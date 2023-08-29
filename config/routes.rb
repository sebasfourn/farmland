Rails.application.routes.draw do
  devise_for :users
<<<<<<< HEAD
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :farms, only: %i[show]
  # Defines the root path route ("/")
  # root "articles#index"
=======

  root to: "farms#index"
  resources :farms, only: :index
>>>>>>> 08167b22b7136a453d9cbad49a3e1336c299a085
end
