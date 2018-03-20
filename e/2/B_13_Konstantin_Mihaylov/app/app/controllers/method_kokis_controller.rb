class MethodKokisController < ApplicationController
  before_action :set_method_koki, only: [:show, :edit, :update, :destroy]

  # GET /method_kokis
  # GET /method_kokis.json
  def index
    @method_kokis = MethodKoki.all
  end

  # GET /method_kokis/1
  # GET /method_kokis/1.json
  def show
  end

  # GET /method_kokis/new
  def new
    @method_koki = MethodKoki.new
  end

  # GET /method_kokis/1/edit
  def edit
  end

  # POST /method_kokis
  # POST /method_kokis.json
  def create
    @method_koki = MethodKoki.new(method_koki_params)

    respond_to do |format|
      if @method_koki.save
        format.html { redirect_to @method_koki, notice: 'Method koki was successfully created.' }
        format.json { render :show, status: :created, location: @method_koki }
      else
        format.html { render :new }
        format.json { render json: @method_koki.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /method_kokis/1
  # PATCH/PUT /method_kokis/1.json
  def update
    respond_to do |format|
      if @method_koki.update(method_koki_params)
        format.html { redirect_to @method_koki, notice: 'Method koki was successfully updated.' }
        format.json { render :show, status: :ok, location: @method_koki }
      else
        format.html { render :edit }
        format.json { render json: @method_koki.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /method_kokis/1
  # DELETE /method_kokis/1.json
  def destroy
    @method_koki.destroy
    respond_to do |format|
      format.html { redirect_to method_kokis_url, notice: 'Method koki was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_method_koki
      @method_koki = MethodKoki.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def method_koki_params
      params.require(:method_koki).permit(:method_id)
    end
end
