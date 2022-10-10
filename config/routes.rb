Rails.application.routes.draw do

  devise_scope :user do
    root to: "devise/sessions#new"
  end
  
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
