class ThreaddsController < ApplicationController
  before_action :set_threadd, only: [:show, :edit, :update, :destroy]

  # GET /threadds
  # GET /threadds.json
  def index
    @threadds = Threadd.all
  end

  # GET /threadds/1
  # GET /threadds/1.json
  def show
  end

  # GET /threadds/new
  def new
    @threadd = Threadd.new
  end

  # GET /threadds/1/edit
  def edit
  end

  # POST /threadds
  # POST /threadds.json
  def create
    @threadd = Threadd.new(threadd_params)

    respond_to do |format|
      if @threadd.save
        format.html { redirect_to @threadd, notice: 'Threadd was successfully created.' }
        format.json { render :show, status: :created, location: @threadd }
      else
        format.html { render :new }
        format.json { render json: @threadd.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /threadds/1
  # PATCH/PUT /threadds/1.json
  def update
    respond_to do |format|
      if @threadd.update(threadd_params)
        format.html { redirect_to @threadd, notice: 'Threadd was successfully updated.' }
        format.json { render :show, status: :ok, location: @threadd }
      else
        format.html { render :edit }
        format.json { render json: @threadd.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /threadds/1
  # DELETE /threadds/1.json
  def destroy
    @threadd.destroy
    respond_to do |format|
      format.html { redirect_to threadds_url, notice: 'Threadd was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_threadd
      @threadd = Threadd.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def threadd_params
      params.require(:threadd).permit(:classname, :value, :..)
    end
end
