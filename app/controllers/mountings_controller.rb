class MountingsController < ApplicationController
    def index
        @mountings = Mounting.all
        @circles = Circle.all
        @teams = Team.all
        respond_to do |format|
            format.html
            format.json
            format.pdf do
                render pdf: "index", template: "mountings/index", formats: [:pdf]
            end
            #format.pdf {render template: "mountings/index", pdf: 'index'}
        end
    end
end
