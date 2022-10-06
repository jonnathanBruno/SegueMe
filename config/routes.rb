Rails.application.routes.draw do

  root "teams#index"
  get "/mountings/followers", to: "mountings#followers"
  get "/mountings/speakers", to: "mountings#speakers"

  resources :mountings, only: [:index, :followers, :speakers]

  resources :circles, 
            :teams, 
            :lectures,
            :followers,
            :participants,
            :speakers,
            :mounting_teams, 
            :mounting_circles,
            :mounting_lectures 
            

end
