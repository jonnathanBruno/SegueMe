class ApplicationController < ActionController::Base
    $pesquisaSeguidores = Follower.all;  
end
