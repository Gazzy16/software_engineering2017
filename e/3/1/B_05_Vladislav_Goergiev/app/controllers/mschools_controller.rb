class MschoolsController < ApplicationController
  before_action :set_mschool, only: [:show, :edit, :update, :destroy]

  # GET /mschools
  # GET /mschools.json
  def index
    @mschools = Mschool.all
  end

  # GET /mschools/1
  # GET /mschools/1.json
  def show
  end

  # GET /mschools/new
  def new
    @mschool = Mschool.new
  end

  # GET /mschools/1/edit
  def edit
  end

  # POST /mschools
  # POST /mschools.json
  def create
    @mschool = Mschool.new(mschool_params)

    respond_to do |format|
      if @mschool.save
        format.html { redirect_to @mschool, notice: 'Mschool was successfully created.' }
        format.json { render :show, status: :created, location: @mschool }
      else
        format.html { render :new }
        format.json { render json: @mschool.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mschools/1
  # PATCH/PUT /mschools/1.json
  def update
    respond_to do |format|
      if @mschool.update(mschool_params)
        format.html { redirect_to @mschool, notice: 'Mschool was successfully updated.' }
        format.json { render :show, status: :ok, location: @mschool }
      else
        format.html { render :edit }
        format.json { render json: @mschool.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mschools/1
  # DELETE /mschools/1.json
  def destroy
    @mschool.destroy
    respond_to do |format|
      format.html { redirect_to mschools_url, notice: 'Mschool was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mschool
      @mschool = Mschool.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mschool_params
      params.require(:mschool).permit(:name, :number)
    end
end
