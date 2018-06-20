class ManifacturersController < ApplicationController
  before_action :set_manifacturer, only: [:show, :edit, :update, :destroy]

  # GET /manifacturers
  # GET /manifacturers.json
  def index
    @manifacturers = Manifacturer.all
  end

  # GET /manifacturers/1
  # GET /manifacturers/1.json
  def show
  end

  # GET /manifacturers/new
  def new
    @manifacturer = Manifacturer.new
  end

  # GET /manifacturers/1/edit
  def edit
  end

  # POST /manifacturers
  # POST /manifacturers.json
  def create
    @manifacturer = Manifacturer.new(manifacturer_params)

    respond_to do |format|
      if @manifacturer.save
        format.html { redirect_to @manifacturer, notice: 'Manifacturer was successfully created.' }
        format.json { render :show, status: :created, location: @manifacturer }
      else
        format.html { render :new }
        format.json { render json: @manifacturer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /manifacturers/1
  # PATCH/PUT /manifacturers/1.json
  def update
    respond_to do |format|
      if @manifacturer.update(manifacturer_params)
        format.html { redirect_to @manifacturer, notice: 'Manifacturer was successfully updated.' }
        format.json { render :show, status: :ok, location: @manifacturer }
      else
        format.html { render :edit }
        format.json { render json: @manifacturer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /manifacturers/1
  # DELETE /manifacturers/1.json
  def destroy
    @manifacturer.destroy
    respond_to do |format|
      format.html { redirect_to manifacturers_url, notice: 'Manifacturer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_manifacturer
      @manifacturer = Manifacturer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def manifacturer_params
      params.require(:manifacturer).permit(:name, :location)
    end
end
