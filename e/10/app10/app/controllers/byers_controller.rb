class ByersController < ApplicationController
  before_action :set_byer, only: [:show, :edit, :update, :destroy]

  # GET /byers
  # GET /byers.json
  def index
    @byers = Byer.all
  end

  # GET /byers/1
  # GET /byers/1.json
  def show
  end

  # GET /byers/new
  def new
    @byer = Byer.new
  end

  # GET /byers/1/edit
  def edit
  end

  # POST /byers
  # POST /byers.json
  def create
    @byer = Byer.new(byer_params)

    respond_to do |format|
      if @byer.save
        format.html { redirect_to @byer, notice: 'Byer was successfully created.' }
        format.json { render :show, status: :created, location: @byer }
      else
        format.html { render :new }
        format.json { render json: @byer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /byers/1
  # PATCH/PUT /byers/1.json
  def update
    respond_to do |format|
      if @byer.update(byer_params)
        format.html { redirect_to @byer, notice: 'Byer was successfully updated.' }
        format.json { render :show, status: :ok, location: @byer }
      else
        format.html { render :edit }
        format.json { render json: @byer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /byers/1
  # DELETE /byers/1.json
  def destroy
    @byer.destroy
    respond_to do |format|
      format.html { redirect_to byers_url, notice: 'Byer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_byer
      @byer = Byer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def byer_params
      params.require(:byer).permit(:money, :name, :country)
    end
end
