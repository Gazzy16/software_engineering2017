class ProcessA25StefanGrozevsController < ApplicationController
  before_action :set_process_a25_stefan_grozev, only: [:show, :edit, :update, :destroy]

  # GET /process_a25_stefan_grozevs
  # GET /process_a25_stefan_grozevs.json
  def index
    @process_a25_stefan_grozevs = ProcessA25StefanGrozev.all
  end

  # GET /process_a25_stefan_grozevs/1
  # GET /process_a25_stefan_grozevs/1.json
  def show
  end

  # GET /process_a25_stefan_grozevs/new
  def new
    @process_a25_stefan_grozev = ProcessA25StefanGrozev.new
  end

  # GET /process_a25_stefan_grozevs/1/edit
  def edit
  end

  # POST /process_a25_stefan_grozevs
  # POST /process_a25_stefan_grozevs.json
  def create
    @process_a25_stefan_grozev = ProcessA25StefanGrozev.new(process_a25_stefan_grozev_params)

    respond_to do |format|
      if @process_a25_stefan_grozev.save
        format.html { redirect_to @process_a25_stefan_grozev, notice: 'Process a25 stefan grozev was successfully created.' }
        format.json { render :show, status: :created, location: @process_a25_stefan_grozev }
      else
        format.html { render :new }
        format.json { render json: @process_a25_stefan_grozev.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /process_a25_stefan_grozevs/1
  # PATCH/PUT /process_a25_stefan_grozevs/1.json
  def update
    respond_to do |format|
      if @process_a25_stefan_grozev.update(process_a25_stefan_grozev_params)
        format.html { redirect_to @process_a25_stefan_grozev, notice: 'Process a25 stefan grozev was successfully updated.' }
        format.json { render :show, status: :ok, location: @process_a25_stefan_grozev }
      else
        format.html { render :edit }
        format.json { render json: @process_a25_stefan_grozev.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /process_a25_stefan_grozevs/1
  # DELETE /process_a25_stefan_grozevs/1.json
  def destroy
    @process_a25_stefan_grozev.destroy
    respond_to do |format|
      format.html { redirect_to process_a25_stefan_grozevs_url, notice: 'Process a25 stefan grozev was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_process_a25_stefan_grozev
      @process_a25_stefan_grozev = ProcessA25StefanGrozev.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def process_a25_stefan_grozev_params
      params.require(:process_a25_stefan_grozev).permit(:name, :id)
    end
end
