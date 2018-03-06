class ProcessA22RadoslavHubenovsController < ApplicationController
  before_action :set_process_a22_radoslav_hubenov, only: [:show, :edit, :update, :destroy]

  # GET /process_a22_radoslav_hubenovs
  # GET /process_a22_radoslav_hubenovs.json
  def index
    @process_a22_radoslav_hubenovs = ProcessA22RadoslavHubenov.all
  end

  # GET /process_a22_radoslav_hubenovs/1
  # GET /process_a22_radoslav_hubenovs/1.json
  def show
  end

  # GET /process_a22_radoslav_hubenovs/new
  def new
    @process_a22_radoslav_hubenov = ProcessA22RadoslavHubenov.new
  end

  # GET /process_a22_radoslav_hubenovs/1/edit
  def edit
  end

  # POST /process_a22_radoslav_hubenovs
  # POST /process_a22_radoslav_hubenovs.json
  def create
    @process_a22_radoslav_hubenov = ProcessA22RadoslavHubenov.new(process_a22_radoslav_hubenov_params)

    respond_to do |format|
      if @process_a22_radoslav_hubenov.save
        format.html { redirect_to @process_a22_radoslav_hubenov, notice: 'Process a22 radoslav hubenov was successfully created.' }
        format.json { render :show, status: :created, location: @process_a22_radoslav_hubenov }
      else
        format.html { render :new }
        format.json { render json: @process_a22_radoslav_hubenov.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /process_a22_radoslav_hubenovs/1
  # PATCH/PUT /process_a22_radoslav_hubenovs/1.json
  def update
    respond_to do |format|
      if @process_a22_radoslav_hubenov.update(process_a22_radoslav_hubenov_params)
        format.html { redirect_to @process_a22_radoslav_hubenov, notice: 'Process a22 radoslav hubenov was successfully updated.' }
        format.json { render :show, status: :ok, location: @process_a22_radoslav_hubenov }
      else
        format.html { render :edit }
        format.json { render json: @process_a22_radoslav_hubenov.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /process_a22_radoslav_hubenovs/1
  # DELETE /process_a22_radoslav_hubenovs/1.json
  def destroy
    @process_a22_radoslav_hubenov.destroy
    respond_to do |format|
      format.html { redirect_to process_a22_radoslav_hubenovs_url, notice: 'Process a22 radoslav hubenov was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_process_a22_radoslav_hubenov
      @process_a22_radoslav_hubenov = ProcessA22RadoslavHubenov.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def process_a22_radoslav_hubenov_params
      params.require(:process_a22_radoslav_hubenov).permit(:name)
    end
end
