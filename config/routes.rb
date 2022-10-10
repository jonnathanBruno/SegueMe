Rails.application.routes.draw do


  root to: "followers#index"
  get "/mountings/followers", to: "mountings#followers"
  get "/mountings/speakers", to: "mountings#speakers"
  get "/mountings/quadrante", to: "mountings#quadrante"

  resources :mountings, only: [:index, :followers, :speakers, :quadrante]
  devise_for :users
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
