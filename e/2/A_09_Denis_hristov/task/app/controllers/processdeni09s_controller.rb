class Processdeni09sController < ApplicationController
  before_action :set_processdeni09, only: [:show, :edit, :update, :destroy]

  # GET /processdeni09s
  # GET /processdeni09s.json
  def index
    @processdeni09s = Processdeni09.all
  end

  # GET /processdeni09s/1
  # GET /processdeni09s/1.json
  def show
  end

  # GET /processdeni09s/new
  def new
    @processdeni09 = Processdeni09.new
  end

  # GET /processdeni09s/1/edit
  def edit
  end

  # POST /processdeni09s
  # POST /processdeni09s.json
  def create
    @processdeni09 = Processdeni09.new(processdeni09_params)

    respond_to do |format|
      if @processdeni09.save
        format.html { redirect_to @processdeni09, notice: 'Processdeni09 was successfully created.' }
        format.json { render :show, status: :created, location: @processdeni09 }
      else
        format.html { render :new }
        format.json { render json: @processdeni09.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /processdeni09s/1
  # PATCH/PUT /processdeni09s/1.json
  def update
    respond_to do |format|
      if @processdeni09.update(processdeni09_params)
        format.html { redirect_to @processdeni09, notice: 'Processdeni09 was successfully updated.' }
        format.json { render :show, status: :ok, location: @processdeni09 }
      else
        format.html { render :edit }
        format.json { render json: @processdeni09.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /processdeni09s/1
  # DELETE /processdeni09s/1.json
  def destroy
    @processdeni09.destroy
    respond_to do |format|
      format.html { redirect_to processdeni09s_url, notice: 'Processdeni09 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_processdeni09
      @processdeni09 = Processdeni09.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def processdeni09_params
      params.require(:processdeni09).permit(:name, :pid)
    end
end
