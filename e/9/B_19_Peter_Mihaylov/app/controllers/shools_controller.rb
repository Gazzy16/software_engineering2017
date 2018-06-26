class ShoolsController < ApplicationController
  before_action :set_shool, only: [:show, :edit, :update, :destroy]

  # GET /shools
  # GET /shools.json
  def index
    @shools = Shool.all
  end

  # GET /shools/1
  # GET /shools/1.json
  def show
  end

  # GET /shools/new
  def new
    @shool = Shool.new
  end

  # GET /shools/1/edit
  def edit
  end

  # POST /shools
  # POST /shools.json
  def create
    @shool = Shool.new(shool_params)

    respond_to do |format|
      if @shool.save
        format.html { redirect_to @shool, notice: 'Shool was successfully created.' }
        format.json { render :show, status: :created, location: @shool }
      else
        format.html { render :new }
        format.json { render json: @shool.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /shools/1
  # PATCH/PUT /shools/1.json
  def update
    respond_to do |format|
      if @shool.update(shool_params)
        format.html { redirect_to @shool, notice: 'Shool was successfully updated.' }
        format.json { render :show, status: :ok, location: @shool }
      else
        format.html { render :edit }
        format.json { render json: @shool.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /shools/1
  # DELETE /shools/1.json
  def destroy
    @shool.destroy
    respond_to do |format|
      format.html { redirect_to shools_url, notice: 'Shool was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_shool
      @shool = Shool.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def shool_params
      params.require(:shool).permit(:name, :number)
    end
end
