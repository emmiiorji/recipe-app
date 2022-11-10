Rails.application.routes.draw do
  resources :foods
  devise_for :users
  root 'foods#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
