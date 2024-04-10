class MusiciansController < ApplicationController
  before_action :set_musician, only: %i[ show edit update destroy ]

  # GET /musicians or /musicians.json
  def index
    @musicians = Musician.all
  end

  # GET /musicians/1 or /musicians/1.json
  def show
  end

  # GET /musicians/new
  def new
    @musician = Musician.new(user_id:current_user.try(:id))
  end

  # GET /musicians/1/edit
  def edit
  end

  # POST /musicians or /musicians.json
  def create
    @musician = Musician.new(musician_params)

    respond_to do |format|
      if @musician.save
        format.html { redirect_to musician_url(@musician), notice: "Musician was successfully created." }
        format.json { render :show, status: :created, location: @musician }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @musician.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /musicians/1 or /musicians/1.json
  def update
    respond_to do |format|
      if @musician.update(musician_params)
        format.html { redirect_to musician_url(@musician), notice: "Musician was successfully updated." }
        format.json { render :show, status: :ok, location: @musician }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @musician.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /musicians/1 or /musicians/1.json
  def destroy
    @musician.destroy

    respond_to do |format|
      format.html { redirect_to musicians_url, notice: "Musician was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_musician
      @musician = Musician.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def musician_params
      params.require(:musician).permit(:name, :image, :user_id, :dateofbirth)
    end
end
