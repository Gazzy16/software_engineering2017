class Threaddeni09sController < ApplicationController
  before_action :set_threaddeni09, only: [:show, :edit, :update, :destroy]

  # GET /threaddeni09s
  # GET /threaddeni09s.json
  def index
    @threaddeni09s = Threaddeni09.all
  end

  # GET /threaddeni09s/1
  # GET /threaddeni09s/1.json
  def show
  end

  # GET /threaddeni09s/new
  def new
    @threaddeni09 = Threaddeni09.new
  end

  # GET /threaddeni09s/1/edit
  def edit
  end

  # POST /threaddeni09s
  # POST /threaddeni09s.json
  def create
    @threaddeni09 = Threaddeni09.new(threaddeni09_params)

    respond_to do |format|
      if @threaddeni09.save
        format.html { redirect_to @threaddeni09, notice: 'Threaddeni09 was successfully created.' }
        format.json { render :show, status: :created, location: @threaddeni09 }
      else
        format.html { render :new }
        format.json { render json: @threaddeni09.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /threaddeni09s/1
  # PATCH/PUT /threaddeni09s/1.json
  def update
    respond_to do |format|
      if @threaddeni09.update(threaddeni09_params)
        format.html { redirect_to @threaddeni09, notice: 'Threaddeni09 was successfully updated.' }
        format.json { render :show, status: :ok, location: @threaddeni09 }
      else
        format.html { render :edit }
        format.json { render json: @threaddeni09.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /threaddeni09s/1
  # DELETE /threaddeni09s/1.json
  def destroy
    @threaddeni09.destroy
    respond_to do |format|
      format.html { redirect_to threaddeni09s_url, notice: 'Threaddeni09 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_threaddeni09
      @threaddeni09 = Threaddeni09.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def threaddeni09_params
      params.require(:threaddeni09).permit(:processdeni09_id)
    end
end
