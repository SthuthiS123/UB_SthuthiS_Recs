class EnjoymentsController < ApplicationController
  before_action :set_enjoyment, only: %i[ show edit update destroy ]

  # GET /enjoyments or /enjoyments.json
  def index
    @enjoyments = Enjoyment.all
  end

  # GET /enjoyments/1 or /enjoyments/1.json
  def show
  end

  # GET /enjoyments/new
  def new
    @enjoyment = Enjoyment.new
  end

  # GET /enjoyments/1/edit
  def edit
  end

  # POST /enjoyments or /enjoyments.json
  def create
    @enjoyment = Enjoyment.new(enjoyment_params)

    respond_to do |format|
      if @enjoyment.save
        format.html { redirect_to enjoyment_url(@enjoyment), notice: "Enjoyment was successfully created." }
        format.json { render :show, status: :created, location: @enjoyment }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @enjoyment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /enjoyments/1 or /enjoyments/1.json
  def update
    respond_to do |format|
      if @enjoyment.update(enjoyment_params)
        format.html { redirect_to enjoyment_url(@enjoyment), notice: "Enjoyment was successfully updated." }
        format.json { render :show, status: :ok, location: @enjoyment }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @enjoyment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /enjoyments/1 or /enjoyments/1.json
  def destroy
    @enjoyment.destroy

    respond_to do |format|
      format.html { redirect_to enjoyments_url, notice: "Enjoyment was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_enjoyment
      @enjoyment = Enjoyment.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def enjoyment_params
      params.require(:enjoyment).permit(:Title, :Subtitle, :description)
    end
end
