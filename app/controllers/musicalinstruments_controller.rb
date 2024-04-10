class MusicalinstrumentsController < ApplicationController
  before_action :set_musicalinstrument, only: %i[ show edit update destroy ]

  # GET /musicalinstruments or /musicalinstruments.json
  def index
    @musicalinstruments = Musicalinstrument.all
  end

  # GET /musicalinstruments/1 or /musicalinstruments/1.json
  def show
  end

  # GET /musicalinstruments/new
  def new
    @musicalinstrument = Musicalinstrument.new
  end

  # GET /musicalinstruments/1/edit
  def edit
  end

  # POST /musicalinstruments or /musicalinstruments.json
  def create
    @musicalinstrument = Musicalinstrument.new(musicalinstrument_params)

    respond_to do |format|
      if @musicalinstrument.save
        format.html { redirect_to musicalinstrument_url(@musicalinstrument), notice: "Musicalinstrument was successfully created." }
        format.json { render :show, status: :created, location: @musicalinstrument }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @musicalinstrument.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /musicalinstruments/1 or /musicalinstruments/1.json
  def update
    respond_to do |format|
      if @musicalinstrument.update(musicalinstrument_params)
        format.html { redirect_to musicalinstrument_url(@musicalinstrument), notice: "Musicalinstrument was successfully updated." }
        format.json { render :show, status: :ok, location: @musicalinstrument }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @musicalinstrument.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /musicalinstruments/1 or /musicalinstruments/1.json
  def destroy
    @musicalinstrument.destroy

    respond_to do |format|
      format.html { redirect_to musicalinstruments_url, notice: "Musicalinstrument was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_musicalinstrument
      @musicalinstrument = Musicalinstrument.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def musicalinstrument_params
      params.require(:musicalinstrument).permit(:name, :image)
    end
end
