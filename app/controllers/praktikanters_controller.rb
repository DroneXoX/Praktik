class PraktikantersController < ApplicationController
  before_action :set_praktikanter, only: %i[ show edit update destroy ]
  before_action :authenticate_user!, except: [:index,]

  # GET /praktikanters or /praktikanters.json
  def index
    @praktikanters = Praktikanter.all
  end

  # GET /praktikanters/1 or /praktikanters/1.json
  def show
  end

  # GET /praktikanters/new
  def new
    @praktikanter = Praktikanter.new
  end

  # GET /praktikanters/1/edit
  def edit
  end

  # POST /praktikanters or /praktikanters.json
  def create
    @praktikanter = Praktikanter.new(praktikanter_params)

    respond_to do |format|
      if @praktikanter.save
        format.html { redirect_to praktikanter_url(@praktikanter), notice: "Praktikanter was successfully created." }
        format.json { render :show, status: :created, location: @praktikanter }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @praktikanter.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /praktikanters/1 or /praktikanters/1.json
  def update
    respond_to do |format|
      if @praktikanter.update(praktikanter_params)
        format.html { redirect_to praktikanter_url(@praktikanter), notice: "Praktikanter was successfully updated." }
        format.json { render :show, status: :ok, location: @praktikanter }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @praktikanter.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /praktikanters/1 or /praktikanters/1.json
  def destroy
    @praktikanter.destroy

    respond_to do |format|
      format.html { redirect_to praktikanters_url, notice: "Praktikanter was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_praktikanter
      @praktikanter = Praktikanter.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def praktikanter_params
      params.require(:praktikanter).permit(:first_förnamn, :efternamn, :email, :telefon, :linkedin)
    end
end
