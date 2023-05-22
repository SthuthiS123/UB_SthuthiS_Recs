class MythologiesController < ApplicationController
  before_action :set_mythology, only: %i[ show edit update destroy ]

  # GET /mythologies or /mythologies.json
  def index
    @mythologies = Mythology.all
  end

  # GET /mythologies/1 or /mythologies/1.json
  def show
  end

  # GET /mythologies/new
  def new
    @mythology = Mythology.new
  end

  # GET /mythologies/1/edit
  def edit
  end

  # POST /mythologies or /mythologies.json
  def create
    @mythology = Mythology.new(mythology_params)

    respond_to do |format|
      if @mythology.save
        format.html { redirect_to mythology_url(@mythology), notice: "Mythology was successfully created." }
        format.json { render :show, status: :created, location: @mythology }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @mythology.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mythologies/1 or /mythologies/1.json
  def update
    respond_to do |format|
      if @mythology.update(mythology_params)
        format.html { redirect_to mythology_url(@mythology), notice: "Mythology was successfully updated." }
        format.json { render :show, status: :ok, location: @mythology }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @mythology.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mythologies/1 or /mythologies/1.json
  def destroy
    @mythology.destroy

    respond_to do |format|
      format.html { redirect_to mythologies_url, notice: "Mythology was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mythology
      @mythology = Mythology.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def mythology_params
      params.require(:mythology).permit(:Title, :Subtitle, :description)
    end
end
