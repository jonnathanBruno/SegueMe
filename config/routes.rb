Rails.application.routes.draw do
  root "followers#index"
  
  resources :followers, except: [:index]
  resources :teams, only: [:index, :create, :new, :destroy]
  get "followers/list/:tipo_encontrista", to: "followers#index"
end
