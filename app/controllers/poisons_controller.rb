class PoisonsController < ApplicationController
  before_action :set_poison, only: [:show, :edit, :update, :destroy]
  before_action :get_plante

  def get_plante
	  @plante =  Plante.find(params[:plante_id])
  end

  # GET /poisons
  # GET /poisons.json
  def index
	  @poisons = @plante.poisons.all
  end

  # GET /poisons/1
  # GET /poisons/1.json
  def show
	  @poison = @plante.poisons.find(params[:id])
	  fresh_when(@poison)
  end

  # GET /poisons/new
  def new
    @poison = Poison.new
  end

  # GET /poisons/1/edit
  def edit
  end

  # POST /poisons
  # POST /poisons.json
  def create
    @poison = Poison.new(poison_params)

    respond_to do |format|
      if @poison.save
        format.html { redirect_to plante_poisons_path, notice: 'Poison was successfully created.' }
        format.json { render :show, status: :created, location: @poison }
      else
        format.html { render :new }
        format.json { render json: @poison.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /poisons/1
  # PATCH/PUT /poisons/1.json
  def update
    respond_to do |format|
      if @poison.update(poison_params)
        format.html { redirect_to plante_poisons_path, notice: 'Poison was successfully updated.' }
        format.json { render :show, status: :ok, location: @poison }
      else
        format.html { render :edit }
        format.json { render json: @poison.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /poisons/1
  # DELETE /poisons/1.json
  def destroy
    @poison.destroy
    respond_to do |format|
      format.html { redirect_to plante_poisons_path, notice: 'Poison was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_poison
      @poison = Poison.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def poison_params
      params.require(:poison).permit(:action, :medium, :toxicite, :partiePlante, :infoComplementaire, :plante_id)
    end
end
