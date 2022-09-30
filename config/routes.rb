Rails.application.routes.draw do

  root "followers#index"

  resources :circles
  resources :followers, except: [:index]
  resources :teams, only: [:index, :create, :new, :destroy]
  resources :mountings
  resources :mounting_circles

  get "mounting/team", to: "mountings#index"
  get "mounting/team/new", to: "mountings#new"

  get "mounting_circles/circle", to: "mounting_circles#index"
  get "mounting_circles/circle/new", to: "mounting_circles#new"
  get "followers/list/:tipo_encontrista", to: "followers#index"
end
