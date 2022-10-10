Rails.application.routes.draw do

  root "followers#index"
  get "/mountings/followers", to: "mountings#followers"
  get "/mountings/speakers", to: "mountings#speakers"
  get "/mountings/quadrante", to: "mountings#quadrante"

  resources :mountings, only: [:index, :followers, :speakers, :quadrante]

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
