class ApplicationController < ActionController::Base
    $pesquisaSeguidores = Follower.all;  
    $pesquisaSeguimistas = Participant.all;  
end
