Rails.application.routes.draw do
  root "followers#index"
  resources :followers
end
