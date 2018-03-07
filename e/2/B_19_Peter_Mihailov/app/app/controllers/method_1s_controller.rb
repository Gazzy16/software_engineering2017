class Method1sController < ApplicationController
  before_action :set_method_1, only: [:show, :edit, :update, :destroy]

  # GET /method_1s
  # GET /method_1s.json
  def index
    @method_1s = Method1.all
  end

  # GET /method_1s/1
  # GET /method_1s/1.json
  def show
  end

  # GET /method_1s/new
  def new
    @method_1 = Method1.new
  end

  # GET /method_1s/1/edit
  def edit
  end

  # POST /method_1s
  # POST /method_1s.json
  def create
    @method_1 = Method1.new(method_1_params)

    respond_to do |format|
      if @method_1.save
        format.html { redirect_to @method_1, notice: 'Method 1 was successfully created.' }
        format.json { render :show, status: :created, location: @method_1 }
      else
        format.html { render :new }
        format.json { render json: @method_1.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /method_1s/1
  # PATCH/PUT /method_1s/1.json
  def update
    respond_to do |format|
      if @method_1.update(method_1_params)
        format.html { redirect_to @method_1, notice: 'Method 1 was successfully updated.' }
        format.json { render :show, status: :ok, location: @method_1 }
      else
        format.html { render :edit }
        format.json { render json: @method_1.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /method_1s/1
  # DELETE /method_1s/1.json
  def destroy
    @method_1.destroy
    respond_to do |format|
      format.html { redirect_to method_1s_url, notice: 'Method 1 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_method_1
      @method_1 = Method1.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def method_1_params
      params.require(:method_1).permit(:program_id)
    end
end
