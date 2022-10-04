class LecturesController < ApplicationController
    # GET /lectures or /lectures.json
  def index
    @lectures = Lecture.all
  end

  # GET /lectures/new
  def new
    @lecture = Lecture.new
  end

  # POST /lectures or /lectures.json
  def create
    @lecture = Lecture.new(lecture_params)

    respond_to do |format|
      if @lecture.save
        format.html { redirect_to lectures_url, notice: "Palestra criado com sucesso." }
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
      format.html { redirect_to lectures_url, notice: "Palestra excluído com sucesso." }
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
