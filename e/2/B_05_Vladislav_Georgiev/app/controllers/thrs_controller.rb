class ThrsController < ApplicationController
  before_action :set_thr, only: [:show, :edit, :update, :destroy]

  # GET /thrs
  # GET /thrs.json
  def index
    @thrs = Thr.all
  end

  # GET /thrs/1
  # GET /thrs/1.json
  def show
  end

  # GET /thrs/new
  def new
    @thr = Thr.new
  end

  # GET /thrs/1/edit
  def edit
  end

  # POST /thrs
  # POST /thrs.json
  def create
    @thr = Thr.new(thr_params)

    respond_to do |format|
      if @thr.save
        format.html { redirect_to @thr, notice: 'Thr was successfully created.' }
        format.json { render :show, status: :created, location: @thr }
      else
        format.html { render :new }
        format.json { render json: @thr.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /thrs/1
  # PATCH/PUT /thrs/1.json
  def update
    respond_to do |format|
      if @thr.update(thr_params)
        format.html { redirect_to @thr, notice: 'Thr was successfully updated.' }
        format.json { render :show, status: :ok, location: @thr }
      else
        format.html { render :edit }
        format.json { render json: @thr.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /thrs/1
  # DELETE /thrs/1.json
  def destroy
    @thr.destroy
    respond_to do |format|
      format.html { redirect_to thrs_url, notice: 'Thr was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_thr
      @thr = Thr.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def thr_params
      params.require(:thr).permit(:thr_id, :value)
    end
end
