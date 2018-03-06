class ProcessLaskinsController < ApplicationController
  before_action :set_process_laskin, only: [:show, :edit, :update, :destroy]

  # GET /process_laskins
  # GET /process_laskins.json
  def index
    @process_laskins = ProcessLaskin.all
  end

  # GET /process_laskins/1
  # GET /process_laskins/1.json
  def show
  end

  # GET /process_laskins/new
  def new
    @process_laskin = ProcessLaskin.new
  end

  # GET /process_laskins/1/edit
  def edit
  end

  # POST /process_laskins
  # POST /process_laskins.json
  def create
    @process_laskin = ProcessLaskin.new(process_laskin_params)

    respond_to do |format|
      if @process_laskin.save
        format.html { redirect_to @process_laskin, notice: 'Process laskin was successfully created.' }
        format.json { render :show, status: :created, location: @process_laskin }
      else
        format.html { render :new }
        format.json { render json: @process_laskin.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /process_laskins/1
  # PATCH/PUT /process_laskins/1.json
  def update
    respond_to do |format|
      if @process_laskin.update(process_laskin_params)
        format.html { redirect_to @process_laskin, notice: 'Process laskin was successfully updated.' }
        format.json { render :show, status: :ok, location: @process_laskin }
      else
        format.html { render :edit }
        format.json { render json: @process_laskin.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /process_laskins/1
  # DELETE /process_laskins/1.json
  def destroy
    @process_laskin.destroy
    respond_to do |format|
      format.html { redirect_to process_laskins_url, notice: 'Process laskin was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_process_laskin
      @process_laskin = ProcessLaskin.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def process_laskin_params
      params.require(:process_laskin).permit(:name, :process_id)
    end
end
