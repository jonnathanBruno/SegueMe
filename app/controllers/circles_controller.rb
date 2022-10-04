class CirclesController < ApplicationController
  before_action :set_circle, only: %i[ destroy ]

  # GET /circles or /circles.json
  def index
    @circles = Circle.all
  end

  # GET /circles/new
  def new
    @circle = Circle.new
  end

  # POST /circles or /circles.json
  def create
    @circle = Circle.new(circle_params)

    respond_to do |format|
      if @circle.save
        format.html { redirect_to new_circle_url, notice: "Círculo criado com sucesso." }
        format.json { render :show, status: :created, location: @circle }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @circle.errors, status: :unprocessable_entity }
      end
    end
  end


  # DELETE /circles/1 or /circles/1.json
  def destroy
    @circle.destroy

    respond_to do |format|
      format.html { redirect_to circles_url, notice: "Círculo excluído com sucesso." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_circle
      @circle = Circle.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def circle_params
      params.require(:circle).permit(:color)
    end
end
