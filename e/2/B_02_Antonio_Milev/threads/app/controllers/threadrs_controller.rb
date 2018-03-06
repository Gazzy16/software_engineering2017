class ThreadrsController < ApplicationController
  before_action :set_threadr, only: [:show, :edit, :update, :destroy]

  # GET /threadrs
  # GET /threadrs.json
  def index
    @threadrs = Threadr.all
  end

  # GET /threadrs/1
  # GET /threadrs/1.json
  def show
  end

  # GET /threadrs/new
  def new
    @threadr = Threadr.new
  end

  # GET /threadrs/1/edit
  def edit
  end

  # POST /threadrs
  # POST /threadrs.json
  def create
    @threadr = Threadr.new(threadr_params)

    respond_to do |format|
      if @threadr.save
        format.html { redirect_to @threadr, notice: 'Threadr was successfully created.' }
        format.json { render :show, status: :created, location: @threadr }
      else
        format.html { render :new }
        format.json { render json: @threadr.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /threadrs/1
  # PATCH/PUT /threadrs/1.json
  def update
    respond_to do |format|
      if @threadr.update(threadr_params)
        format.html { redirect_to @threadr, notice: 'Threadr was successfully updated.' }
        format.json { render :show, status: :ok, location: @threadr }
      else
        format.html { render :edit }
        format.json { render json: @threadr.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /threadrs/1
  # DELETE /threadrs/1.json
  def destroy
    @threadr.destroy
    respond_to do |format|
      format.html { redirect_to threadrs_url, notice: 'Threadr was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_threadr
      @threadr = Threadr.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def threadr_params
      params.require(:threadr).permit(:id, :value)
    end
end
