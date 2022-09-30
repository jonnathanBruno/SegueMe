class MountingCirclesController < ApplicationController
    before_action :set_mounting_circle, only: %i[destroy]

    def index
        @circles = Circle.all
    end

    def new
        @teste = Mounting.new

        @jaSalvo = Mounting.all
        jaSalvo_ids = @jaSalvo.pluck(:follower_id).join(",")
        @followers = Follower.sem_inseridos(jaSalvo_ids)
    end 

    def create
        @teste = Mounting.new(mounting_params_circle)
        @teste.save
        p "ENTROU AQUI #################################################################"
    end

    def destroy
        @mounting.destroy
    
        respond_to do |format|
          format.html { redirect_to "/mounting/circle", notice: "Encontrista removido com sucesso." }
          format.json { head :no_content }
        end
    end

    private
    def set_mounting_circle
      @mounting = Mounting.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def mounting_params_circle
      params.require(:teste).permit(:ano, :funcao, :team_id, :follower_id, :circle_id)
    end
end
