class ThreadsLaskinsController < ApplicationController
  before_action :set_threads_laskin, only: [:show, :edit, :update, :destroy]

  # GET /threads_laskins
  # GET /threads_laskins.json
  def index
    @threads_laskins = ThreadsLaskin.all
  end

  # GET /threads_laskins/1
  # GET /threads_laskins/1.json
  def show
  end

  # GET /threads_laskins/new
  def new
    @threads_laskin = ThreadsLaskin.new
  end

  # GET /threads_laskins/1/edit
  def edit
  end

  # POST /threads_laskins
  # POST /threads_laskins.json
  def create
    @threads_laskin = ThreadsLaskin.new(threads_laskin_params)

    respond_to do |format|
      if @threads_laskin.save
        format.html { redirect_to @threads_laskin, notice: 'Threads laskin was successfully created.' }
        format.json { render :show, status: :created, location: @threads_laskin }
      else
        format.html { render :new }
        format.json { render json: @threads_laskin.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /threads_laskins/1
  # PATCH/PUT /threads_laskins/1.json
  def update
    respond_to do |format|
      if @threads_laskin.update(threads_laskin_params)
        format.html { redirect_to @threads_laskin, notice: 'Threads laskin was successfully updated.' }
        format.json { render :show, status: :ok, location: @threads_laskin }
      else
        format.html { render :edit }
        format.json { render json: @threads_laskin.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /threads_laskins/1
  # DELETE /threads_laskins/1.json
  def destroy
    @threads_laskin.destroy
    respond_to do |format|
      format.html { redirect_to threads_laskins_url, notice: 'Threads laskin was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_threads_laskin
      @threads_laskin = ThreadsLaskin.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def threads_laskin_params
      params.require(:threads_laskin).permit(:process_id, :processLaskin_id)
    end
end
