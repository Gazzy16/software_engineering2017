class ProgramKokisController < ApplicationController
  before_action :set_program_koki, only: [:show, :edit, :update, :destroy]

  # GET /program_kokis
  # GET /program_kokis.json
  def index
    @program_kokis = ProgramKoki.all
  end

  # GET /program_kokis/1
  # GET /program_kokis/1.json
  def show
    <<<<<<< HEAD
=======
  @method_kokis = ProgramKoki.all
>>>>>>> 03df20c1bf85863abd238ff32839656daa6ae3b1
  end

  # GET /program_kokis/new
  def new
    @program_koki = ProgramKoki.new
  end

  # GET /program_kokis/1/edit
  def edit
  end

  # POST /program_kokis
  # POST /program_kokis.json
  def create
    @program_koki = ProgramKoki.new(program_koki_params)

    respond_to do |format|
      if @program_koki.save
        format.html { redirect_to @program_koki, notice: 'Program koki was successfully created.' }
        format.json { render :show, status: :created, location: @program_koki }
      else
        format.html { render :new }
        format.json { render json: @program_koki.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /program_kokis/1
  # PATCH/PUT /program_kokis/1.json
  def update
    respond_to do |format|
      if @program_koki.update(program_koki_params)
        format.html { redirect_to @program_koki, notice: 'Program koki was successfully updated.' }
        format.json { render :show, status: :ok, location: @program_koki }
      else
        format.html { render :edit }
        format.json { render json: @program_koki.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /program_kokis/1
  # DELETE /program_kokis/1.json
  def destroy
    @program_koki.destroy
    respond_to do |format|
      format.html { redirect_to program_kokis_url, notice: 'Program koki was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_program_koki
      @program_koki = ProgramKoki.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def program_koki_params
      params.require(:program_koki).permit(:method_id)
    end
end
