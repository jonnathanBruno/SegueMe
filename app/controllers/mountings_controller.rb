class MountingsController < ApplicationController
    before_action :authenticate_user!
    
    def index
        @mountings = Mounting.all
        @participants = Participant.all
        @palestras = Lecture.all
        @teams = Team.nao_dirigentes
        @teamsManager = Team.dirigentes
        @circles = Circle.all
        respond_to do |format|
            format.html {render "mountings/index", :layout => "pdf.html.erb"}
            format.json
            format.pdf do
                render pdf: "index", template: "mountings/index.html.erb", layout: "pdf.html.erb"
            end
            #format.pdf {render template: "mountings/index", pdf: 'index'}
        end
    end

    def followers
        @teams = Team.nao_dirigentes
        @teamsManager = Team.dirigentes
        respond_to do |format|
            format.html {render "mountings/followers", :layout => "pdf.html.erb"}
            format.json
            format.pdf do
                render pdf: "index", template: "mountings/followers.html.erb", layout: "pdf.html.erb"
            end
        end
    end

    def speakers
        @palestras = Lecture.all
        respond_to do |format|
            format.html {render "mountings/speakers", :layout => "pdf.html.erb"}
            format.json
            format.pdf do
                render pdf: "index", template: "mountings/speaker.html.erb", layout: "pdf.html.erb"
            end
        end
    end

    def quadrante
    end
end
