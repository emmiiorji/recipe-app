Rails.application.routes.draw do
  resources :recipes
 
  devise_for :users

 

  resources :foods

  resources :recipe_foods

  root 'foods#index'



  get 'public_recipes', to: 'recipes#public_recipe'

  

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
