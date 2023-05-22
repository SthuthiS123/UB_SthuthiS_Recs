class EconomicsController < ApplicationController
  before_action :set_economic, only: %i[ show edit update destroy ]

  # GET /economics or /economics.json
  def index
    @economics = Economic.all
  end

  # GET /economics/1 or /economics/1.json
  def show
  end

  # GET /economics/new
  def new
    @economic = Economic.new
  end

  # GET /economics/1/edit
  def edit
  end

  # POST /economics or /economics.json
  def create
    @economic = Economic.new(economic_params)

    respond_to do |format|
      if @economic.save
        format.html { redirect_to economic_url(@economic), notice: "Economic was successfully created." }
        format.json { render :show, status: :created, location: @economic }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @economic.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /economics/1 or /economics/1.json
  def update
    respond_to do |format|
      if @economic.update(economic_params)
        format.html { redirect_to economic_url(@economic), notice: "Economic was successfully updated." }
        format.json { render :show, status: :ok, location: @economic }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @economic.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /economics/1 or /economics/1.json
  def destroy
    @economic.destroy

    respond_to do |format|
      format.html { redirect_to economics_url, notice: "Economic was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_economic
      @economic = Economic.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def economic_params
      params.require(:economic).permit(:Title, :Subtitle, :description)
    end
end
