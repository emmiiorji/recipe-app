Rails.application.routes.draw do
  resources :recipes
  devise_for :users
  resources :users

  resources :foods
  resources :recipe_foods
  root 'foods#index'

  get 'public_recipes', to: 'recipes#public_recipes'
 # get 'shopping_list', to: 'shopping_list#shopping_list' 

  get 'general_shopping_list', to: 'recipes#shopping_list'

 # get 'recipes/new', to: 'recipes#new' 
 # post 'recipes/new', to: 'recipes#create' 


end
