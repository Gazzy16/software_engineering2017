class StudentKokisController < ApplicationController
  before_action :set_student_koki, only: [:show, :edit, :update, :destroy]

  # GET /student_kokis
  # GET /student_kokis.json
  def index
    @student_kokis = StudentKoki.all
  end

  # GET /student_kokis/1
  # GET /student_kokis/1.json
  def show
  end

  # GET /student_kokis/new
  def new
    @student_koki = StudentKoki.new
  end

  # GET /student_kokis/1/edit
  def edit
  end

  # POST /student_kokis
  # POST /student_kokis.json
  def create
    @student_koki = StudentKoki.new(student_koki_params)

    respond_to do |format|
      if @student_koki.save
        format.html { redirect_to @student_koki, notice: 'Student koki was successfully created.' }
        format.json { render :show, status: :created, location: @student_koki }
      else
        format.html { render :new }
        format.json { render json: @student_koki.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /student_kokis/1
  # PATCH/PUT /student_kokis/1.json
  def update
    respond_to do |format|
      if @student_koki.update(student_koki_params)
        format.html { redirect_to @student_koki, notice: 'Student koki was successfully updated.' }
        format.json { render :show, status: :ok, location: @student_koki }
      else
        format.html { render :edit }
        format.json { render json: @student_koki.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /student_kokis/1
  # DELETE /student_kokis/1.json
  def destroy
    @student_koki.destroy
    respond_to do |format|
      format.html { redirect_to student_kokis_url, notice: 'Student koki was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_student_koki
      @student_koki = StudentKoki.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def student_koki_params
      params.require(:student_koki).permit(:first_name, :second_name, :email, :school)
    end
end
