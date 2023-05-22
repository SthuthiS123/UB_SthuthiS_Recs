Rails.application.routes.draw do
  devise_for :users
  resources :enjoyments
  resources :socials
  resources :mythologies
  resources :civilisations
  resources :educations
  resources :economics
  resources :arts
  root 'home#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
