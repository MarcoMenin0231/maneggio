class IscrizionesController < ApplicationController
  before_action :set_iscrizione, only: %i[ show edit update destroy ]

  # GET /iscriziones or /iscriziones.json
  def index
    @iscriziones = Iscrizione.all
  end

  # GET /iscriziones/1 or /iscriziones/1.json
  def show
  end

  # GET /iscriziones/new
  def new
    @iscrizione = Iscrizione.new
  end

  # GET /iscriziones/1/edit
  def edit
  end

  # POST /iscriziones or /iscriziones.json
  def create
    @iscrizione = Iscrizione.new(iscrizione_params)

    respond_to do |format|
      if @iscrizione.save
        format.html { redirect_to @iscrizione, notice: "Iscrizione was successfully created." }
        format.json { render :show, status: :created, location: @iscrizione }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @iscrizione.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /iscriziones/1 or /iscriziones/1.json
  def update
    respond_to do |format|
      if @iscrizione.update(iscrizione_params)
        format.html { redirect_to @iscrizione, notice: "Iscrizione was successfully updated." }
        format.json { render :show, status: :ok, location: @iscrizione }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @iscrizione.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /iscriziones/1 or /iscriziones/1.json
  def destroy
    @iscrizione.destroy
    respond_to do |format|
      format.html { redirect_to iscriziones_url, notice: "Iscrizione was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_iscrizione
      @iscrizione = Iscrizione.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def iscrizione_params
      params.require(:iscrizione).permit(:cognome, :nome, :email, :email, :cellulare, :età, :richiesta)
    end
end
