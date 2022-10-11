class ApplicationController < ActionController::Base
    $pesquisaSeguidores = Follower.all;
    $circles = Circle.all;  
end
