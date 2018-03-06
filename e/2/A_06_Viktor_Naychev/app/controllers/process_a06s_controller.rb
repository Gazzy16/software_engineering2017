class ProcessA06sController < ApplicationController
  before_action :set_process_a06, only: [:show, :edit, :update, :destroy]

  # GET /process_a06s
  # GET /process_a06s.json
  def index
    @process_a06s = ProcessA06.all
  end

  # GET /process_a06s/1
  # GET /process_a06s/1.json
  def show
  end

  # GET /process_a06s/new
  def new
    @process_a06 = ProcessA06.new
  end

  # GET /process_a06s/1/edit
  def edit
  end

  # POST /process_a06s
  # POST /process_a06s.json
  def create
    @process_a06 = ProcessA06.new(process_a06_params)

    respond_to do |format|
      if @process_a06.save
        format.html { redirect_to @process_a06, notice: 'Process a06 was successfully created.' }
        format.json { render :show, status: :created, location: @process_a06 }
      else
        format.html { render :new }
        format.json { render json: @process_a06.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /process_a06s/1
  # PATCH/PUT /process_a06s/1.json
  def update
    respond_to do |format|
      if @process_a06.update(process_a06_params)
        format.html { redirect_to @process_a06, notice: 'Process a06 was successfully updated.' }
        format.json { render :show, status: :ok, location: @process_a06 }
      else
        format.html { render :edit }
        format.json { render json: @process_a06.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /process_a06s/1
  # DELETE /process_a06s/1.json
  def destroy
    @process_a06.destroy
    respond_to do |format|
      format.html { redirect_to process_a06s_url, notice: 'Process a06 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_process_a06
      @process_a06 = ProcessA06.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def process_a06_params
      params.require(:process_a06).permit(:name)
    end
end
