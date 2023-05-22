class CivilisationsController < ApplicationController
  before_action :set_civilisation, only: %i[ show edit update destroy ]

  # GET /civilisations or /civilisations.json
  def index
    @q = Civilisation.ransack(params[:q])
    @civilisations = @q.result(distict: true)
  end

  # GET /civilisations/1 or /civilisations/1.json
  def show
  end

  # GET /civilisations/new
  def new
    @civilisation = Civilisation.new
  end

  # GET /civilisations/1/edit
  def edit
  end

  # POST /civilisations or /civilisations.json
  def create
    @civilisation = Civilisation.new(civilisation_params)

    respond_to do |format|
      if @civilisation.save
        format.html { redirect_to civilisation_url(@civilisation), notice: "Civilisation was successfully created." }
        format.json { render :show, status: :created, location: @civilisation }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @civilisation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /civilisations/1 or /civilisations/1.json
  def update
    respond_to do |format|
      if @civilisation.update(civilisation_params)
        format.html { redirect_to civilisation_url(@civilisation), notice: "Civilisation was successfully updated." }
        format.json { render :show, status: :ok, location: @civilisation }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @civilisation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /civilisations/1 or /civilisations/1.json
  def destroy
    @civilisation.destroy

    respond_to do |format|
      format.html { redirect_to civilisations_url, notice: "Civilisation was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_civilisation
      @civilisation = Civilisation.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def civilisation_params
      params.require(:civilisation).permit(:Title, :Subtitle, :description, :avatar)
    end
end
