class MethodIvsController < ApplicationController
  before_action :set_method_iv, only: [:show, :edit, :update, :destroy]

  # GET /method_ivs
  # GET /method_ivs.json
  def index
    @method_ivs = MethodIv.all
  end

  # GET /method_ivs/1
  # GET /method_ivs/1.json
  def show
  end

  # GET /method_ivs/new
  def new
    @method_iv = MethodIv.new
  end

  # GET /method_ivs/1/edit
  def edit
  end

  # POST /method_ivs
  # POST /method_ivs.json
  def create
    @method_iv = MethodIv.new(method_iv_params)

    respond_to do |format|
      if @method_iv.save
        format.html { redirect_to @method_iv, notice: 'Method iv was successfully created.' }
        format.json { render :show, status: :created, location: @method_iv }
      else
        format.html { render :new }
        format.json { render json: @method_iv.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /method_ivs/1
  # PATCH/PUT /method_ivs/1.json
  def update
    respond_to do |format|
      if @method_iv.update(method_iv_params)
        format.html { redirect_to @method_iv, notice: 'Method iv was successfully updated.' }
        format.json { render :show, status: :ok, location: @method_iv }
      else
        format.html { render :edit }
        format.json { render json: @method_iv.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /method_ivs/1
  # DELETE /method_ivs/1.json
  def destroy
    @method_iv.destroy
    respond_to do |format|
      format.html { redirect_to method_ivs_url, notice: 'Method iv was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_method_iv
      @method_iv = MethodIv.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def method_iv_params
      params.require(:method_iv).permit(:id_id)
    end
end
