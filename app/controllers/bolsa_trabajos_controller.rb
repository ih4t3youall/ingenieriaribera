class BolsaTrabajosController < ApplicationController
  before_action :set_bolsa_trabajo, only: [:show, :edit, :update, :destroy]

  # GET /bolsa_trabajos
  # GET /bolsa_trabajos.json
  def index
    @bolsa_trabajos = BolsaTrabajo.all
  end

  # GET /bolsa_trabajos/1
  # GET /bolsa_trabajos/1.json
  def show
  end

  # GET /bolsa_trabajos/new
  def new
    @bolsa_trabajo = BolsaTrabajo.new
  end

  # GET /bolsa_trabajos/1/edit
  def edit
  end

  # POST /bolsa_trabajos
  # POST /bolsa_trabajos.json
  def create
    @bolsa_trabajo = BolsaTrabajo.new(bolsa_trabajo_params)

    respond_to do |format|
      if @bolsa_trabajo.save
        format.html { redirect_to @bolsa_trabajo, notice: 'Bolsa trabajo was successfully created.' }
        format.json { render :show, status: :created, location: @bolsa_trabajo }
      else
        format.html { render :new }
        format.json { render json: @bolsa_trabajo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bolsa_trabajos/1
  # PATCH/PUT /bolsa_trabajos/1.json
  def update
    respond_to do |format|
      if @bolsa_trabajo.update(bolsa_trabajo_params)
        format.html { redirect_to @bolsa_trabajo, notice: 'Bolsa trabajo was successfully updated.' }
        format.json { render :show, status: :ok, location: @bolsa_trabajo }
      else
        format.html { render :edit }
        format.json { render json: @bolsa_trabajo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bolsa_trabajos/1
  # DELETE /bolsa_trabajos/1.json
  def destroy
    @bolsa_trabajo.destroy
    respond_to do |format|
      format.html { redirect_to bolsa_trabajos_url, notice: 'Bolsa trabajo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bolsa_trabajo
      @bolsa_trabajo = BolsaTrabajo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bolsa_trabajo_params
      params.require(:bolsa_trabajo).permit(:empleador, :urlImg, :descripcionAbreviada, :descripcionCompleta, :ubicacion, :latitud, :longitud, :requisitos, :requisitosExcluyentes, :sueldo, :horario)
    end
end
