class MountingLecturesController < ApplicationController
    before_action :set_mounting_lecture, only: %i[destroy]

    def index
        @lectures = Lecture.all
    end

    def new
        @mounting = Mounting.new
        @jaSalvo = Mounting.condicao_montagem("speaker_id")
        jaSalvo_ids = @jaSalvo.pluck(:speaker_id).join(",")
        @speakers = Speaker.sem_inseridos(jaSalvo_ids)
    end 

    def create
      @mounting = Mounting.new(mounting_params_lecture)
      respond_to do |format|
        if @mounting.save
          format.html { redirect_to new_mounting_lecture_url, notice: "Palestrante adicionado com sucesso." }
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
          format.html { redirect_to mounting_lectures_url, notice: "Palestrante removido com sucesso." }
          format.json { head :no_content }
        end
    end

    private
    def set_mounting_lecture
      @mounting = Mounting.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def mounting_params_lecture
      params.require(:mounting).permit(:speaker_id, :lecture_id, :year, :occupation)
    end
end
