Rails.application.routes.draw do

  root "teams#index"

  resources :circles, 
            :teams, 
            :lectures,
            :followers,
            :participants,
            :speakers,
            :mountings,
            :mounting_teams, 
            :mounting_circles,
            :mounting_lectures              
end
