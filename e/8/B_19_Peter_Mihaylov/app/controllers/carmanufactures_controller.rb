class CarmanufacturesController < ApplicationController
  before_action :set_carmanufacture, only: [:show, :edit, :update, :destroy]

  # GET /carmanufactures
  # GET /carmanufactures.json
  def index
    @carmanufactures = Carmanufacture.all
  end

  # GET /carmanufactures/1
  # GET /carmanufactures/1.json
  def show
  end

  # GET /carmanufactures/new
  def new
    @carmanufacture = Carmanufacture.new
  end

  # GET /carmanufactures/1/edit
  def edit
  end

  # POST /carmanufactures
  # POST /carmanufactures.json
  def create
    @carmanufacture = Carmanufacture.new(carmanufacture_params)

    respond_to do |format|
      if @carmanufacture.save
        format.html { redirect_to @carmanufacture, notice: 'Carmanufacture was successfully created.' }
        format.json { render :show, status: :created, location: @carmanufacture }
      else
        format.html { render :new }
        format.json { render json: @carmanufacture.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /carmanufactures/1
  # PATCH/PUT /carmanufactures/1.json
  def update
    respond_to do |format|
      if @carmanufacture.update(carmanufacture_params)
        format.html { redirect_to @carmanufacture, notice: 'Carmanufacture was successfully updated.' }
        format.json { render :show, status: :ok, location: @carmanufacture }
      else
        format.html { render :edit }
        format.json { render json: @carmanufacture.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /carmanufactures/1
  # DELETE /carmanufactures/1.json
  def destroy
    @carmanufacture.destroy
    respond_to do |format|
      format.html { redirect_to carmanufactures_url, notice: 'Carmanufacture was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_carmanufacture
      @carmanufacture = Carmanufacture.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def carmanufacture_params
      params.fetch(:carmanufacture, {})
    end
end
