class UsuarioZonasController < ApplicationController
  before_action :set_usuario_zona, only: [:show, :edit, :update, :destroy]

  # GET /usuario_zonas
  # GET /usuario_zonas.json
  def index
    @usuario_zonas = UsuarioZona.all
  end

  # GET /usuario_zonas/1
  # GET /usuario_zonas/1.json
  def show
  end

  # GET /usuario_zonas/new
  def new
    @usuario_zona = UsuarioZona.new
  end

  # GET /usuario_zonas/1/edit
  def edit
  end

  # POST /usuario_zonas
  # POST /usuario_zonas.json
  def create
    @usuario_zona = UsuarioZona.new(usuario_zona_params)

    respond_to do |format|
      if @usuario_zona.save
        format.html { redirect_to @usuario_zona, notice: 'Usuario zona was successfully created.' }
        format.json { render :show, status: :created, location: @usuario_zona }
      else
        format.html { render :new }
        format.json { render json: @usuario_zona.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /usuario_zonas/1
  # PATCH/PUT /usuario_zonas/1.json
  def update
    respond_to do |format|
      if @usuario_zona.update(usuario_zona_params)
        format.html { redirect_to @usuario_zona, notice: 'Usuario zona was successfully updated.' }
        format.json { render :show, status: :ok, location: @usuario_zona }
      else
        format.html { render :edit }
        format.json { render json: @usuario_zona.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /usuario_zonas/1
  # DELETE /usuario_zonas/1.json
  def destroy
    @usuario_zona.destroy
    respond_to do |format|
      format.html { redirect_to usuario_zonas_url, notice: 'Usuario zona was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_usuario_zona
      @usuario_zona = UsuarioZona.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def usuario_zona_params
      params.require(:usuario_zona).permit(:id_usuario_zona, :id_usuario, :localidad_zona)
    end
end
