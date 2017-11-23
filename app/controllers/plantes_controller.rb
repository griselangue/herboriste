class PlantesController < ApplicationController
  before_action :set_plante, only: [:show, :edit, :update, :destroy]

  # GET /plantes
  # GET /plantes.json
  def index
	  @plantes = Plante.all.order(:nomCommun)
  end

  # GET /plantes/1
  # GET /plantes/1.json
  def show
  end

  # GET /plantes/new
  def new
    @plante = Plante.new
  end

  # GET /plantes/1/edit
  def edit
  end

  # POST /plantes
  # POST /plantes.json
  def create
    @plante = Plante.new(plante_params)

    respond_to do |format|
      if @plante.save
        format.html { redirect_to @plante, notice: 'Plante was successfully created.' }
        format.json { render :show, status: :created, location: @plante }
      else
        format.html { render :new }
        format.json { render json: @plante.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /plantes/1
  # PATCH/PUT /plantes/1.json
  def update
    respond_to do |format|
      if @plante.update(plante_params)
        format.html { redirect_to @plante, notice: 'Plante was successfully updated.' }
        format.json { render :show, status: :ok, location: @plante }
      else
        format.html { render :edit }
        format.json { render json: @plante.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /plantes/1
  # DELETE /plantes/1.json
  def destroy
    @plante.destroy
    respond_to do |format|
      format.html { redirect_to plantes_url, notice: 'Plante was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_plante
      @plante = Plante.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def plante_params
      params.require(:plante).permit(:nomCommun, :nomScientifique, :description, :dimension, :fleur, :tige, :feuille, :racine, :fruit)
    end
end
