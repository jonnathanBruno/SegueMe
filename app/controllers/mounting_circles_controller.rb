class MountingCirclesController < ApplicationController
    before_action :set_mounting_circle, only: %i[destroy]

    def index
        @circles = Circle.all
    end

    def new
        @mounting = Mounting.new
        @jaSalvo = Mounting.condicao_montagem("participant_id")
        jaSalvo_ids = @jaSalvo.pluck(:participant_id).join(",")
        @participants = Participant.sem_inseridos(jaSalvo_ids)
    end 

    def create
      @mounting = Mounting.new(mounting_params_circle)
      respond_to do |format|
        if @mounting.circle_id == nil
          format.html { redirect_to new_mounting_circle_url, alert: "Erro: Escolha o círculo!" }

        elsif @mounting.participant_id == nil
          format.html { redirect_to new_mounting_circle_url, alert: "Erro: seguimista está vazio!" }

        elsif @mounting.save
          format.html { redirect_to new_mounting_circle_url, notice: "Encontrista adicionado com sucesso." }
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
          format.html { redirect_to mounting_circles_url, notice: "Encontrista removido com sucesso." }
          format.json { head :no_content }
        end
    end

    private
    def set_mounting_circle
      @mounting = Mounting.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def mounting_params_circle
      params.require(:mounting).permit(:participant_id, :circle_id, :year, :occupation)
    end
end
