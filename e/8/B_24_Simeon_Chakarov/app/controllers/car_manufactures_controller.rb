class CarManufacturesController < ApplicationController
  before_action :set_car_manufacture, only: [:show, :edit, :update, :destroy]

  # GET /car_manufactures
  # GET /car_manufactures.json
  def index
    @car_manufactures = CarManufacture.all
  end

  # GET /car_manufactures/1
  # GET /car_manufactures/1.json
  def show
  end

  # GET /car_manufactures/new
  def new
    @car_manufacture = CarManufacture.new
  end

  # GET /car_manufactures/1/edit
  def edit
  end

  # POST /car_manufactures
  # POST /car_manufactures.json
  def create
    @car_manufacture = CarManufacture.new(car_manufacture_params)

    respond_to do |format|
      if @car_manufacture.save
        format.html { redirect_to @car_manufacture, notice: 'Car manufacture was successfully created.' }
        format.json { render :show, status: :created, location: @car_manufacture }
      else
        format.html { render :new }
        format.json { render json: @car_manufacture.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /car_manufactures/1
  # PATCH/PUT /car_manufactures/1.json
  def update
    respond_to do |format|
      if @car_manufacture.update(car_manufacture_params)
        format.html { redirect_to @car_manufacture, notice: 'Car manufacture was successfully updated.' }
        format.json { render :show, status: :ok, location: @car_manufacture }
      else
        format.html { render :edit }
        format.json { render json: @car_manufacture.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /car_manufactures/1
  # DELETE /car_manufactures/1.json
  def destroy
    @car_manufacture.destroy
    respond_to do |format|
      format.html { redirect_to car_manufactures_url, notice: 'Car manufacture was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_car_manufacture
      @car_manufacture = CarManufacture.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def car_manufacture_params
      params.require(:car_manufacture).permit(:car_id, :manufacture_id)
    end
end
