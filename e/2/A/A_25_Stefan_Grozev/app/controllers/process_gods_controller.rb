class ProcessGodsController < ApplicationController
  before_action :set_process_god, only: [:show, :edit, :update, :destroy]

  # GET /process_gods
  # GET /process_gods.json
  def index
    @process_gods = ProcessGod.all
  end

  # GET /process_gods/1
  # GET /process_gods/1.json
  def show
  end

  # GET /process_gods/new
  def new
    @process_god = ProcessGod.new
  end

  # GET /process_gods/1/edit
  def edit
  end

  # POST /process_gods
  # POST /process_gods.json
  def create
    @process_god = ProcessGod.new(process_god_params)

    respond_to do |format|
      if @process_god.save
        format.html { redirect_to @process_god, notice: 'Process god was successfully created.' }
        format.json { render :show, status: :created, location: @process_god }
      else
        format.html { render :new }
        format.json { render json: @process_god.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /process_gods/1
  # PATCH/PUT /process_gods/1.json
  def update
    respond_to do |format|
      if @process_god.update(process_god_params)
        format.html { redirect_to @process_god, notice: 'Process god was successfully updated.' }
        format.json { render :show, status: :ok, location: @process_god }
      else
        format.html { render :edit }
        format.json { render json: @process_god.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /process_gods/1
  # DELETE /process_gods/1.json
  def destroy
    @process_god.destroy
    respond_to do |format|
      format.html { redirect_to process_gods_url, notice: 'Process god was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_process_god
      @process_god = ProcessGod.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def process_god_params
      params.require(:process_god).permit(:name, :id)
    end
end
