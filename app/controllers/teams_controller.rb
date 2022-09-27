class TeamsController < ApplicationController
    before_action :set_team, only: %i[ destroy ]

    def index
        @teams = Team.all
    end

    def new
        @team = Team.new
    end

    def create
        @team = Team.new(team_params)
        respond_to do |format|
          if @team.save
            format.html { redirect_to teams_path(), notice: "Equipe criado com sucesso." }
            format.json { render :index, status: :created, location: @team }
          else
            format.html { render :new, status: :unprocessable_entity }
            format.json { render json: @team.errors, status: :unprocessable_entity }
          end
        end
    end

    def destroy
        @team.destroy
        respond_to do |format|
          format.html { redirect_to teams_url, notice: "Equipe excluída com sucesso." }
          format.json { head :no_content }
        end
    end

    private
    def set_team
        @team = Team.find(params[:id])
    end

    def team_params
      params.require(:team).permit(:nome_equipe, :qnt_componente)
    end

end
