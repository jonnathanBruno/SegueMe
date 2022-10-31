Rails.application.routes.draw do

  scope '(:locale)', locale: /pt-BR|en/ do
    root to: "followers#index"
    get "/mountings/followers", to: "mountings#followers"
    get "/mountings/speakers", to: "mountings#speakers"
    get "/mountings/quadrante", to: "mountings#quadrante"
    get "documents/download_pdf_2015"
    get "documents/download_pdf_2016"
    get "documents/download_pdf_2017"
    get "documents/download_pdf_2018"
    get "documents/download_pdf_2019"
    get "documents/download_pdf_2022"
    get "documents/download_cantos_hora_santa"
    get "documents/download_livro_canto"
    get "documents", to: "documents#index"

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
end
