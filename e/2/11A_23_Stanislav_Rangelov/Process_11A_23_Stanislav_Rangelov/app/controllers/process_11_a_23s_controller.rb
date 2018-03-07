class Process11A23sController < ApplicationController
  before_action :set_process_11_a_23, only: [:show, :edit, :update, :destroy]

  # GET /process_11_a_23s
  # GET /process_11_a_23s.json
  def index
    @process_11_a_23s = Process11A23.all
  end

  # GET /process_11_a_23s/1
  # GET /process_11_a_23s/1.json
  def show
  end

  # GET /process_11_a_23s/new
  def new
    @process_11_a_23 = Process11A23.new
  end

  # GET /process_11_a_23s/1/edit
  def edit
  end

  # POST /process_11_a_23s
  # POST /process_11_a_23s.json
  def create
    @process_11_a_23 = Process11A23.new(process_11_a_23_params)

    respond_to do |format|
      if @process_11_a_23.save
        format.html { redirect_to @process_11_a_23, notice: 'Process 11 a 23 was successfully created.' }
        format.json { render :show, status: :created, location: @process_11_a_23 }
      else
        format.html { render :new }
        format.json { render json: @process_11_a_23.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /process_11_a_23s/1
  # PATCH/PUT /process_11_a_23s/1.json
  def update
    respond_to do |format|
      if @process_11_a_23.update(process_11_a_23_params)
        format.html { redirect_to @process_11_a_23, notice: 'Process 11 a 23 was successfully updated.' }
        format.json { render :show, status: :ok, location: @process_11_a_23 }
      else
        format.html { render :edit }
        format.json { render json: @process_11_a_23.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /process_11_a_23s/1
  # DELETE /process_11_a_23s/1.json
  def destroy
    @process_11_a_23.destroy
    respond_to do |format|
      format.html { redirect_to process_11_a_23s_url, notice: 'Process 11 a 23 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_process_11_a_23
      @process_11_a_23 = Process11A23.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def process_11_a_23_params
      params.require(:process_11_a_23).permit(:name, :id)
    end
end
