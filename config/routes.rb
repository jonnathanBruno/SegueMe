Rails.application.routes.draw do
  root "followers#index"
  resources :followers 
  resources :teams, only: [:index, :create, :new, :destroy]

end
