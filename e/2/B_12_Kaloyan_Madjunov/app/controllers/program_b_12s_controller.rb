class ProgramB12sController < ApplicationController
  before_action :set_program_b_12, only: [:show, :edit, :update, :destroy]

  # GET /program_b_12s
  # GET /program_b_12s.json
  def index
    @program_b_12s = ProgramB12.all
  end

  # GET /program_b_12s/1
  # GET /program_b_12s/1.json
  def show
<<<<<<< HEAD
=======
	@program_b_12s = ProgramB12.all
>>>>>>> 03df20c1bf85863abd238ff32839656daa6ae3b1
  end

  # GET /program_b_12s/new
  def new
    @program_b_12 = ProgramB12.new
  end

  # GET /program_b_12s/1/edit
  def edit
  end

  # POST /program_b_12s
  # POST /program_b_12s.json
  def create
    @program_b_12 = ProgramB12.new(program_b_12_params)

    respond_to do |format|
      if @program_b_12.save
        format.html { redirect_to @program_b_12, notice: 'Program b 12 was successfully created.' }
        format.json { render :show, status: :created, location: @program_b_12 }
      else
        format.html { render :new }
        format.json { render json: @program_b_12.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /program_b_12s/1
  # PATCH/PUT /program_b_12s/1.json
  def update
    respond_to do |format|
      if @program_b_12.update(program_b_12_params)
        format.html { redirect_to @program_b_12, notice: 'Program b 12 was successfully updated.' }
        format.json { render :show, status: :ok, location: @program_b_12 }
      else
        format.html { render :edit }
        format.json { render json: @program_b_12.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /program_b_12s/1
  # DELETE /program_b_12s/1.json
  def destroy
    @program_b_12.destroy
    respond_to do |format|
      format.html { redirect_to program_b_12s_url, notice: 'Program b 12 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_program_b_12
      @program_b_12 = ProgramB12.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def program_b_12_params
      params.require(:program_b_12).permit(:thread_id)
    end
end
