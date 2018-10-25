class ZonaLocalidadsController < ApplicationController
  before_action :set_zona_localidad, only: [:show, :edit, :update, :destroy]

  # GET /zona_localidads
  # GET /zona_localidads.json
  def index
    @zona_localidads = ZonaLocalidad.all
  end

  # GET /zona_localidads/1
  # GET /zona_localidads/1.json
  def show
  end

  # GET /zona_localidads/new
  def new
    @zona_localidad = ZonaLocalidad.new
  end

  # GET /zona_localidads/1/edit
  def edit
  end

  # POST /zona_localidads
  # POST /zona_localidads.json
  def create
    @zona_localidad = ZonaLocalidad.new(zona_localidad_params)

    respond_to do |format|
      if @zona_localidad.save
        format.html { redirect_to @zona_localidad, notice: 'Zona localidad was successfully created.' }
        format.json { render :show, status: :created, location: @zona_localidad }
      else
        format.html { render :new }
        format.json { render json: @zona_localidad.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /zona_localidads/1
  # PATCH/PUT /zona_localidads/1.json
  def update
    respond_to do |format|
      if @zona_localidad.update(zona_localidad_params)
        format.html { redirect_to @zona_localidad, notice: 'Zona localidad was successfully updated.' }
        format.json { render :show, status: :ok, location: @zona_localidad }
      else
        format.html { render :edit }
        format.json { render json: @zona_localidad.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /zona_localidads/1
  # DELETE /zona_localidads/1.json
  def destroy
    @zona_localidad.destroy
    respond_to do |format|
      format.html { redirect_to zona_localidads_url, notice: 'Zona localidad was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_zona_localidad
      @zona_localidad = ZonaLocalidad.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def zona_localidad_params
      params.require(:zona_localidad).permit(:id_zona_localidad, :zona, :localidad)
    end
end
