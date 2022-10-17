class MountingTeamsController < ApplicationController
    before_action :authenticate_user!
    before_action :set_mounting_teams, only: %i[destroy]

    def index
        @teams = Team.all.order(:name)
    end

    def new
        @mounting = Mounting.new
        @jaSalvo = Mounting.condicao_montagem("follower_id", "team_id")
        jaSalvo_ids = @jaSalvo.pluck(:follower_id).join(",")
        @followers = Follower.order(:name)
    end 

    def create
        @mounting = Mounting.new(mounting_teams_params)
        respond_to do |format|
          if @mounting.team_id == nil
            format.html { redirect_to new_mounting_team_url, alert: "Erro: Escolha a equipe!" }

          elsif @mounting.follower_id == nil
            format.html { redirect_to new_mounting_team_url, alert: "Erro: seguidor está vazio!" }

          elsif @mounting.save
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
