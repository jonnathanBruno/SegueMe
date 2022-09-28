Rails.application.routes.draw do
  root "followers#index"
  
  resources :followers, except: [:index]
  resources :teams, only: [:index, :create, :new, :destroy]
  resources :mountings

  get "mounting/team", to: "mountings#index"
  get "mounting/team/new", to: "mountings#new"
  get "followers/list/:tipo_encontrista", to: "followers#index"
end
