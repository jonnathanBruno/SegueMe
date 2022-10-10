class ParticipantsController < ApplicationController
    before_action :authenticate_user!
    before_action :set_participant, only: %i[ show edit update destroy ]

    # GET /participants or /participants.json
    def index
      current_page = (params[:page] || 1).to_i
      @participants = Participant.order('name')
                                 .page(current_page)
    end
  
    # GET /participants/1 or /participants/1.json
    def show
    end
  
    # GET /participants/new
    def new
      @participant = Participant.new
      @textoTitulo = "Cadastrar Seguimista"
    end
  
    # GET /participants/1/edit
    def edit
      @textoTitulo = "Editar Seguimista"
    end
  
    # POST /participants or /participants.json
    def create
      @participant = Participant.new(participant_params)
      respond_to do |format|
        if @participant.save
          format.html { redirect_to new_participant_url, notice: "Seguimista criado com sucesso." }
          format.json { render :show, status: :created, location: @participant }
        else
          format.html { render :new, status: :unprocessable_entity }
          format.json { render json: @participant.errors, status: :unprocessable_entity }
        end
      end
    end
  
    # PATCH/PUT /participants/1 or /participants/1.json
    def update
      respond_to do |format|
        if @participant.update(participant_params)
          format.html { redirect_to participant_url(@participant), notice: "Seguimista atualizado com sucesso." }
          format.json { render :show, status: :ok, location: @participant }
        else
          format.html { render :edit, status: :unprocessable_entity }
          format.json { render json: @participant.errors, status: :unprocessable_entity }
        end
      end
    end
  
    # DELETE /participants/1 or /participants/1.json
    def destroy
      typeDate = @participant.type_date
      @participant.destroy
  
      respond_to do |format|
        format.html { redirect_to participants_url, notice: "Seguimista excluído com sucesso." }
        format.json { head :no_content }
      end
    end
  
    private
      # Use callbacks to share common setup or constraints between actions.
      def set_participant
        @participant = Participant.find(params[:id])
      end
  
      # Only allow a list of trusted parameters through.
      def participant_params
        params.require(:participant).permit(:name, :email, :birth, :address, :contact, :parish_id, :surname )
      end
end
