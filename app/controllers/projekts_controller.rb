class ProjektsController < ApplicationController
  before_action :set_projekt, only: %i[ show edit update destroy ]

  # GET /projekts or /projekts.json
  def index
    @projekts = Projekt.all
  end

  # GET /projekts/1 or /projekts/1.json
  def show
  end

  # GET /projekts/new
  def new
    @projekt = Projekt.new
  end

  # GET /projekts/1/edit
  def edit
  end

  # POST /projekts or /projekts.json
  def create
    @projekt = Projekt.new(projekt_params)

    respond_to do |format|
      if @projekt.save
        format.html { redirect_to projekt_url(@projekt), notice: "Projekt was successfully created." }
        format.json { render :show, status: :created, location: @projekt }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @projekt.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /projekts/1 or /projekts/1.json
  def update
    respond_to do |format|
      if @projekt.update(projekt_params)
        format.html { redirect_to projekt_url(@projekt), notice: "Projekt was successfully updated." }
        format.json { render :show, status: :ok, location: @projekt }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @projekt.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /projekts/1 or /projekts/1.json
  def destroy
    @projekt.destroy

    respond_to do |format|
      format.html { redirect_to projekts_url, notice: "Projekt was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_projekt
      @projekt = Projekt.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def projekt_params
      params.require(:projekt).permit(:namn, :beskrivning, :ägare, :status)
    end
end
