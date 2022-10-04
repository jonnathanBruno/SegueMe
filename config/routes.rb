Rails.application.routes.draw do

  root "teams#index"

  resources :circles, 
            :teams, 
            :lectures,
            :followers,
            :mountings,
            :mounting_teams, 
            :mounting_circles          
end
