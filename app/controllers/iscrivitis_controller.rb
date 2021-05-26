class IscrivitisController < ApplicationController
  before_action :set_iscriviti, only: %i[ show edit update destroy ]

  # GET /iscrivitis or /iscrivitis.json
  def index
    @iscrivitis = Iscriviti.all
  end

  # GET /iscrivitis/1 or /iscrivitis/1.json
  def show
  end

  # GET /iscrivitis/new
  def new
    @iscriviti = Iscriviti.new
  end

  # GET /iscrivitis/1/edit
  def edit
  end

  # POST /iscrivitis or /iscrivitis.json
  def create
    @iscriviti = Iscriviti.new(iscriviti_params)

    respond_to do |format|
      if @iscriviti.save
        format.html { redirect_to @iscriviti, notice: "Iscriviti was successfully created." }
        format.json { render :show, status: :created, location: @iscriviti }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @iscriviti.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /iscrivitis/1 or /iscrivitis/1.json
  def update
    respond_to do |format|
      if @iscriviti.update(iscriviti_params)
        format.html { redirect_to @iscriviti, notice: "Iscriviti was successfully updated." }
        format.json { render :show, status: :ok, location: @iscriviti }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @iscriviti.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /iscrivitis/1 or /iscrivitis/1.json
  def destroy
    @iscriviti.destroy
    respond_to do |format|
      format.html { redirect_to iscrivitis_url, notice: "Iscriviti was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_iscriviti
      @iscriviti = Iscriviti.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def iscriviti_params
      params.require(:iscriviti).permit(:cognome, :nome, :email, :cellulare, :età, :richiesta)
    end
end
