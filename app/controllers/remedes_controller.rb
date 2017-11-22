class RemedesController < ApplicationController
  before_action :set_remede, only: [:show, :edit, :update, :destroy]
  before_action :get_plante

  def get_plante
	  @plante = Plante.find(params[:plante_id])
  end

  # GET /remedes
  # GET /remedes.json
  def index
	  @remedes = @plante.remedes.all
  end

  # GET /remedes/1
  # GET /remedes/1.json
  def show
	  @remede = @plante.remedes.find(params[:id])
  end

  # GET /remedes/new
  def new
    @remede = Remede.new
  end

  # GET /remedes/1/edit
  def edit
  end

  # POST /remedes
  # POST /remedes.json
  def create
    @remede = Remede.new(remede_params)

    respond_to do |format|
      if @remede.save
        format.html { redirect_to @remede, notice: 'Remede was successfully created.' }
        format.json { render :show, status: :created, location: @remede }
      else
        format.html { render :new }
        format.json { render json: @remede.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /remedes/1
  # PATCH/PUT /remedes/1.json
  def update
    respond_to do |format|
      if @remede.update(remede_params)
        format.html { redirect_to @remede, notice: 'Remede was successfully updated.' }
        format.json { render :show, status: :ok, location: @remede }
      else
        format.html { render :edit }
        format.json { render json: @remede.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /remedes/1
  # DELETE /remedes/1.json
  def destroy
    @remede.destroy
    respond_to do |format|
      format.html { redirect_to remedes_url, notice: 'Remede was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_remede
      @remede = Remede.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def remede_params
      params.require(:remede).permit(:modeAdministration, :partiePlante, :maux, :infoComplementaire, :plante_id)
    end
end
