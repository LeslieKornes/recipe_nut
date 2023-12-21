Rails.application.routes.draw do

  root "recipes#index"

  resources :recipes

  resources :users
  get "signup" => "users#new"

  resource :session, only: [:new, :create, :destroy]
  get "signin" => "sessions#new"
end
