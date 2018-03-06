class ThreadA22RadoslavHubenovsController < ApplicationController
  before_action :set_thread_a22_radoslav_hubenov, only: [:show, :edit, :update, :destroy]

  # GET /thread_a22_radoslav_hubenovs
  # GET /thread_a22_radoslav_hubenovs.json
  def index
    @thread_a22_radoslav_hubenovs = ThreadA22RadoslavHubenov.all
  end

  # GET /thread_a22_radoslav_hubenovs/1
  # GET /thread_a22_radoslav_hubenovs/1.json
  def show
  end

  # GET /thread_a22_radoslav_hubenovs/new
  def new
    @thread_a22_radoslav_hubenov = ThreadA22RadoslavHubenov.new
  end

  # GET /thread_a22_radoslav_hubenovs/1/edit
  def edit
  end

  # POST /thread_a22_radoslav_hubenovs
  # POST /thread_a22_radoslav_hubenovs.json
  def create
    @thread_a22_radoslav_hubenov = ThreadA22RadoslavHubenov.new(thread_a22_radoslav_hubenov_params)

    respond_to do |format|
      if @thread_a22_radoslav_hubenov.save
        format.html { redirect_to @thread_a22_radoslav_hubenov, notice: 'Thread a22 radoslav hubenov was successfully created.' }
        format.json { render :show, status: :created, location: @thread_a22_radoslav_hubenov }
      else
        format.html { render :new }
        format.json { render json: @thread_a22_radoslav_hubenov.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /thread_a22_radoslav_hubenovs/1
  # PATCH/PUT /thread_a22_radoslav_hubenovs/1.json
  def update
    respond_to do |format|
      if @thread_a22_radoslav_hubenov.update(thread_a22_radoslav_hubenov_params)
        format.html { redirect_to @thread_a22_radoslav_hubenov, notice: 'Thread a22 radoslav hubenov was successfully updated.' }
        format.json { render :show, status: :ok, location: @thread_a22_radoslav_hubenov }
      else
        format.html { render :edit }
        format.json { render json: @thread_a22_radoslav_hubenov.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /thread_a22_radoslav_hubenovs/1
  # DELETE /thread_a22_radoslav_hubenovs/1.json
  def destroy
    @thread_a22_radoslav_hubenov.destroy
    respond_to do |format|
      format.html { redirect_to thread_a22_radoslav_hubenovs_url, notice: 'Thread a22 radoslav hubenov was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_thread_a22_radoslav_hubenov
      @thread_a22_radoslav_hubenov = ThreadA22RadoslavHubenov.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def thread_a22_radoslav_hubenov_params
      params.fetch(:thread_a22_radoslav_hubenov, {})
    end
end
