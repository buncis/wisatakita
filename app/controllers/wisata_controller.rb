class WisataController < ApplicationController
  before_action :set_wisatum, only: [:show, :edit, :update, :destroy]

  # GET /wisata
  # GET /wisata.json
  def index
    @wisata = Wisatum.all
  end

  # GET /wisata/1
  # GET /wisata/1.json
  def show
  end

  # GET /wisata/new
  def new
    @wisatum = Wisatum.new
  end

  # GET /wisata/1/edit
  def edit
  end

  # POST /wisata
  # POST /wisata.json
  def create
    @wisatum = Wisatum.new(wisatum_params)

    respond_to do |format|
      if @wisatum.save
        format.html { redirect_to @wisatum, notice: 'Wisatum was successfully created.' }
        format.json { render :show, status: :created, location: @wisatum }
      else
        format.html { render :new }
        format.json { render json: @wisatum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /wisata/1
  # PATCH/PUT /wisata/1.json
  def update
    respond_to do |format|
      if @wisatum.update(wisatum_params)
        format.html { redirect_to @wisatum, notice: 'Wisatum was successfully updated.' }
        format.json { render :show, status: :ok, location: @wisatum }
      else
        format.html { render :edit }
        format.json { render json: @wisatum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /wisata/1
  # DELETE /wisata/1.json
  def destroy
    @wisatum.destroy
    respond_to do |format|
      format.html { redirect_to wisata_url, notice: 'Wisatum was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_wisatum
      @wisatum = Wisatum.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def wisatum_params
      params.require(:wisatum).permit(:nama, :harga, :info, :foto)
    end
end
