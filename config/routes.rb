Rails.application.routes.draw do
 
  devise_for :users


  resources :foods
  resources :recipes do
    resources :recipe_foods
  end


  root 'foods#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
