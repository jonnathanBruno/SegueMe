Rails.application.routes.draw do

  root "teams#index"
  resources :followers, except: [:index]

  resources :circles, 
            :teams, 
            :mountings,
            :mounting_teams, 
            :mounting_circles, 
             only: [:index, :create, :new, :destroy]
             
  get "followers/list/:tipo_encontrista", to: "followers#index"
end
