class ProcessA12sController < ApplicationController
  before_action :set_process_a_12, only: [:show, :edit, :update, :destroy]

  # GET /process_a_12s
  # GET /process_a_12s.json
  def index
    @process_a_12s = ProcessA12.all
  end

  def show
    @article = ProcessA12.find(process_a_12_params)
  end

  # GET /process_a_12s/new
  def new
    @process_a_12 = ProcessA12.new
  end

  # GET /process_a_12s/1/edit
  def edit
  end

  # POST /process_a_12s
  # POST /process_a_12s.json
  def create
    @process_a_12 = ProcessA12.new(process_a_12_params)

    if @process_a_12.save
      format.html { redirect_to @process_a_12, notice: 'Process a 12 was successfully created.' }
    else
      format.html { render :new }
    end
  end

  # PATCH/PUT /process_a_12s/1
  # PATCH/PUT /process_a_12s/1.json
  def update
    if @process_a_12.update(process_a_12_params)
      format.html { redirect_to @process_a_12, notice: 'Process a 12 was successfully updated.' }
    else
      format.html { render :edit }
    end
  end

  # DELETE /process_a_12s/1
  # DELETE /process_a_12s/1.json
  def destroy
    @process_a_12.destroy
    format.html { redirect_to process_a_12s_url, notice: 'Process a 12 was successfully destroyed.' }
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_process_a_12
    @process_a_12 = ProcessA12.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def process_a_12_params
    params.require(:process_a_12).permit(:name, :id)
  end
end
