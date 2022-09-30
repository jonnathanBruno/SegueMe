class MountingTeamsController < ApplicationController
    before_action :set_mounting_teams, only: %i[destroy]

    def index
        @teams = Team.all
    end

    def new
        @mounting = Mounting.new
        @jaSalvo = Mounting.all
        jaSalvo_ids = @jaSalvo.pluck(:follower_id).join(",")
        @followers = Follower.sem_inseridos(jaSalvo_ids)
                             .buscar_tipo_encontrista("Seguidor")
    end 

    def create
        @mounting = Mounting.new(mounting_teams_params)
        respond_to do |format|
          if @mounting.save
            format.html { redirect_to new_mounting_team_url, notice: "Encontrista adicionado com sucesso." }
            format.json { render :new, status: :created, location: @mounting }
          else
            format.html { render :new, status: :unprocessable_entity}
            format.json { render json: @mounting.errors, status: :unprocessable_entity }
          end
        end
    end

    def destroy
        @mounting.destroy
    
        respond_to do |format|
          format.html { redirect_to mounting_teams_url, notice: "Encontrista removido com sucesso." }
          format.json { head :no_content }
        end
    end

    private
    def set_mounting_teams
      @mounting = Mounting.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def mounting_teams_params
      params.require(:mounting).permit(:follower_id, :team_id, :year, :occupation)
    end
end
