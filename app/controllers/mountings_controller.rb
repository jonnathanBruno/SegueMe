class MountingsController < ApplicationController
    def index
        @mountings = Mounting.all
        @participants = Participant.all
        @palestras = Mounting.where("lecture_id IS NOT NULL")
        @teams = Team.all
        respond_to do |format|
            format.html {render "mountings/index", :layout => "pdf.html.erb"}
            format.json
            format.pdf do
                render pdf: "index", template: "mountings/index.html.erb", layout: "pdf.html.erb"
            end
            #format.pdf {render template: "mountings/index", pdf: 'index'}
        end
    end
end
