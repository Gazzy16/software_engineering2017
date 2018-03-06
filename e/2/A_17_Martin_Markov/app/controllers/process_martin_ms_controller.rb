class ProcessMartinMsController < ApplicationController
  before_action :set_process_martin_m, only: [:show, :edit, :update, :destroy]

  # GET /process_martin_ms
  # GET /process_martin_ms.json
  def index
    @process_martin_ms = ProcessMartinM.all
  end

  # GET /process_martin_ms/1
  # GET /process_martin_ms/1.json
  def show
  end

  # GET /process_martin_ms/new
  def new
    @process_martin_m = ProcessMartinM.new
  end

  # GET /process_martin_ms/1/edit
  def edit
  end

  # POST /process_martin_ms
  # POST /process_martin_ms.json
  def create
    @process_martin_m = ProcessMartinM.new(process_martin_m_params)

    respond_to do |format|
      if @process_martin_m.save
        format.html { redirect_to @process_martin_m, notice: 'Process martin m was successfully created.' }
        format.json { render :show, status: :created, location: @process_martin_m }
      else
        format.html { render :new }
        format.json { render json: @process_martin_m.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /process_martin_ms/1
  # PATCH/PUT /process_martin_ms/1.json
  def update
    respond_to do |format|
      if @process_martin_m.update(process_martin_m_params)
        format.html { redirect_to @process_martin_m, notice: 'Process martin m was successfully updated.' }
        format.json { render :show, status: :ok, location: @process_martin_m }
      else
        format.html { render :edit }
        format.json { render json: @process_martin_m.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /process_martin_ms/1
  # DELETE /process_martin_ms/1.json
  def destroy
    @process_martin_m.destroy
    respond_to do |format|
      format.html { redirect_to process_martin_ms_url, notice: 'Process martin m was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_process_martin_m
      @process_martin_m = ProcessMartinM.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def process_martin_m_params
      params.require(:process_martin_m).permit(:name)
    end
end
