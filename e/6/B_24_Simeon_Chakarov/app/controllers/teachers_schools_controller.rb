class TeachersSchoolsController < ApplicationController
  before_action :set_teachers_school, only: [:show, :edit, :update, :destroy]

  # GET /teachers_schools
  # GET /teachers_schools.json
  def index
    @teachers_schools = TeachersSchool.all
	@teachers = Teacher.all
  end

  # GET /teachers_schools/1
  # GET /teachers_schools/1.json
  def show
  end

  # GET /teachers_schools/new
  def new
    @teachers_school = TeachersSchool.new
  end

  # GET /teachers_schools/1/edit
  def edit
  end

  # POST /teachers_schools
  # POST /teachers_schools.json
  def create
    @teachers_school = TeachersSchool.new(teachers_school_params)

    respond_to do |format|
      if @teachers_school.save
        format.html { redirect_to @teachers_school, notice: 'Teachers school was successfully created.' }
        format.json { render :show, status: :created, location: @teachers_school }
      else
        format.html { render :new }
        format.json { render json: @teachers_school.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /teachers_schools/1
  # PATCH/PUT /teachers_schools/1.json
  def update
    respond_to do |format|
      if @teachers_school.update(teachers_school_params)
        format.html { redirect_to @teachers_school, notice: 'Teachers school was successfully updated.' }
        format.json { render :show, status: :ok, location: @teachers_school }
      else
        format.html { render :edit }
        format.json { render json: @teachers_school.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /teachers_schools/1
  # DELETE /teachers_schools/1.json
  def destroy
    @teachers_school.destroy
    respond_to do |format|
      format.html { redirect_to teachers_schools_url, notice: 'Teachers school was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_teachers_school
      @teachers_school = TeachersSchool.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def teachers_school_params
      params.require(:teachers_school).permit(:id_teacher, :id_school)
    end
end
