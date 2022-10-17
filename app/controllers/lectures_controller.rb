class LecturesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_lecture, only: %i[ edit update destroy ]


  # GET /lectures or /lectures.json
  def index
    @lectures = Lecture.order("date_lecture").all
  end

  # GET /lectures/new
  def new
    @lecture = Lecture.new
  end

  def edit
  end

  def update
    respond_to do |format|
      if @lecture.update(lecture_params)
        format.html { redirect_to lectures_url(), notice: "Palestra atualizado com sucesso." }
        format.json { render :show, status: :ok, location: @lecture }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @lecture.errors, status: :unprocessable_entity }
      end
    end
  end


  # POST /lectures or /lectures.json
  def create
    @lecture = Lecture.new(lecture_params)

    respond_to do |format|
      if @lecture.save
        format.html { redirect_to lectures_url, notice: "Palestra criada com sucesso." }
        format.json { render :show, status: :created, location: @lecture }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @lecture.errors, status: :unprocessable_entity }
      end
    end
  end


  # DELETE /lectures/1 or /lectures/1.json
  def destroy
    @lecture.destroy

    respond_to do |format|
      format.html { redirect_to lectures_url, notice: "Palestra excluída com sucesso." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lecture
      @lecture = Lecture.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def lecture_params
      params.require(:lecture).permit(:name, :date_lecture, :time_lecture)
    end
end
