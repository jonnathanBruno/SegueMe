Rails.application.routes.draw do

  root "teams#index"
  resources :followers, except: [:index]

  resources :circles, only: [:index, :create, :new, :destroy]
  resources :teams, only: [:index, :create, :new, :destroy]
  resources :mounting_teams, only: [:index, :create, :new, :destroy]
  resources :mounting_circles, only: [:index, :create, :new, :destroy]
             
  get "followers/list/:tipo_encontrista", to: "followers#index"
end
