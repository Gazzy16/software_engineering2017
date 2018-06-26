class TeacherSchoolsController < ApplicationController
  before_action :set_teacher_school, only: [:show, :edit, :update, :destroy]

  # GET /teacher_schools
  # GET /teacher_schools.json
  def index
    @teacher_schools = TeacherSchool.all
  end

  # GET /teacher_schools/1
  # GET /teacher_schools/1.json
  def show
  end

  # GET /teacher_schools/new
  def new
    @teacher_school = TeacherSchool.new
  end

  # GET /teacher_schools/1/edit
  def edit
  end

  # POST /teacher_schools
  # POST /teacher_schools.json
  def create
    @teacher_school = TeacherSchool.new(teacher_school_params)

    respond_to do |format|
      if @teacher_school.save
        format.html { redirect_to @teacher_school, notice: 'Teacher school was successfully created.' }
        format.json { render :show, status: :created, location: @teacher_school }
      else
        format.html { render :new }
        format.json { render json: @teacher_school.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /teacher_schools/1
  # PATCH/PUT /teacher_schools/1.json
  def update
    respond_to do |format|
      if @teacher_school.update(teacher_school_params)
        format.html { redirect_to @teacher_school, notice: 'Teacher school was successfully updated.' }
        format.json { render :show, status: :ok, location: @teacher_school }
      else
        format.html { render :edit }
        format.json { render json: @teacher_school.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /teacher_schools/1
  # DELETE /teacher_schools/1.json
  def destroy
    @teacher_school.destroy
    respond_to do |format|
      format.html { redirect_to teacher_schools_url, notice: 'Teacher school was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_teacher_school
      @teacher_school = TeacherSchool.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def teacher_school_params
      params.require(:teacher_school).permit(:teacher_id, :school_id)
    end
end
