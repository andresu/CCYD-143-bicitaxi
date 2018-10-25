class BicitaxistaAgremiacionsController < ApplicationController
  before_action :set_bicitaxista_agremiacion, only: [:show, :edit, :update, :destroy]

  # GET /bicitaxista_agremiacions
  # GET /bicitaxista_agremiacions.json
  def index
    @bicitaxista_agremiacions = BicitaxistaAgremiacion.all
  end

  # GET /bicitaxista_agremiacions/1
  # GET /bicitaxista_agremiacions/1.json
  def show
  end

  # GET /bicitaxista_agremiacions/new
  def new
    @bicitaxista_agremiacion = BicitaxistaAgremiacion.new
  end

  # GET /bicitaxista_agremiacions/1/edit
  def edit
  end

  # POST /bicitaxista_agremiacions
  # POST /bicitaxista_agremiacions.json
  def create
    @bicitaxista_agremiacion = BicitaxistaAgremiacion.new(bicitaxista_agremiacion_params)

    respond_to do |format|
      if @bicitaxista_agremiacion.save
        format.html { redirect_to @bicitaxista_agremiacion, notice: 'Bicitaxista agremiacion was successfully created.' }
        format.json { render :show, status: :created, location: @bicitaxista_agremiacion }
      else
        format.html { render :new }
        format.json { render json: @bicitaxista_agremiacion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bicitaxista_agremiacions/1
  # PATCH/PUT /bicitaxista_agremiacions/1.json
  def update
    respond_to do |format|
      if @bicitaxista_agremiacion.update(bicitaxista_agremiacion_params)
        format.html { redirect_to @bicitaxista_agremiacion, notice: 'Bicitaxista agremiacion was successfully updated.' }
        format.json { render :show, status: :ok, location: @bicitaxista_agremiacion }
      else
        format.html { render :edit }
        format.json { render json: @bicitaxista_agremiacion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bicitaxista_agremiacions/1
  # DELETE /bicitaxista_agremiacions/1.json
  def destroy
    @bicitaxista_agremiacion.destroy
    respond_to do |format|
      format.html { redirect_to bicitaxista_agremiacions_url, notice: 'Bicitaxista agremiacion was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bicitaxista_agremiacion
      @bicitaxista_agremiacion = BicitaxistaAgremiacion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bicitaxista_agremiacion_params
      params.require(:bicitaxista_agremiacion).permit(:id_bicitaxista_agremiacion, :id_usuario, :id_agremiacion)
    end
end
