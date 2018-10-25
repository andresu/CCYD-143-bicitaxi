class AgremiacionsController < ApplicationController
  before_action :set_agremiacion, only: [:show, :edit, :update, :destroy]

  # GET /agremiacions
  # GET /agremiacions.json
  def index
    @agremiacions = Agremiacion.all
  end

  # GET /agremiacions/1
  # GET /agremiacions/1.json
  def show
  end

  # GET /agremiacions/new
  def new
    @agremiacion = Agremiacion.new
  end

  # GET /agremiacions/1/edit
  def edit
  end

  # POST /agremiacions
  # POST /agremiacions.json
  def create
    @agremiacion = Agremiacion.new(agremiacion_params)

    respond_to do |format|
      if @agremiacion.save
        format.html { redirect_to @agremiacion, notice: 'Agremiacion was successfully created.' }
        format.json { render :show, status: :created, location: @agremiacion }
      else
        format.html { render :new }
        format.json { render json: @agremiacion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /agremiacions/1
  # PATCH/PUT /agremiacions/1.json
  def update
    respond_to do |format|
      if @agremiacion.update(agremiacion_params)
        format.html { redirect_to @agremiacion, notice: 'Agremiacion was successfully updated.' }
        format.json { render :show, status: :ok, location: @agremiacion }
      else
        format.html { render :edit }
        format.json { render json: @agremiacion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /agremiacions/1
  # DELETE /agremiacions/1.json
  def destroy
    @agremiacion.destroy
    respond_to do |format|
      format.html { redirect_to agremiacions_url, notice: 'Agremiacion was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_agremiacion
      @agremiacion = Agremiacion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def agremiacion_params
      params.require(:agremiacion).permit(:id_agremiacion, :nombre_agremiacion, :telefono, :email)
    end
end
