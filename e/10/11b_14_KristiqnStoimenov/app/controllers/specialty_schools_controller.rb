class SpecialtySchoolsController < ApplicationController
  before_action :set_specialty_school, only: [:show, :edit, :update, :destroy]

  # GET /specialty_schools
  # GET /specialty_schools.json
  def index
    @specialty_schools = SpecialtySchool.all
  end

  # GET /specialty_schools/1
  # GET /specialty_schools/1.json
  def show
  end

  # GET /specialty_schools/new
  def new
    @specialty_school = SpecialtySchool.new
  end

  # GET /specialty_schools/1/edit
  def edit
  end

  # POST /specialty_schools
  # POST /specialty_schools.json
  def create
    @specialty_school = SpecialtySchool.new(specialty_school_params)

    respond_to do |format|
      if @specialty_school.save
        format.html { redirect_to @specialty_school, notice: 'Specialty school was successfully created.' }
        format.json { render :show, status: :created, location: @specialty_school }
      else
        format.html { render :new }
        format.json { render json: @specialty_school.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /specialty_schools/1
  # PATCH/PUT /specialty_schools/1.json
  def update
    respond_to do |format|
      if @specialty_school.update(specialty_school_params)
        format.html { redirect_to @specialty_school, notice: 'Specialty school was successfully updated.' }
        format.json { render :show, status: :ok, location: @specialty_school }
      else
        format.html { render :edit }
        format.json { render json: @specialty_school.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /specialty_schools/1
  # DELETE /specialty_schools/1.json
  def destroy
    @specialty_school.destroy
    respond_to do |format|
      format.html { redirect_to specialty_schools_url, notice: 'Specialty school was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_specialty_school
      @specialty_school = SpecialtySchool.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def specialty_school_params
      params.require(:specialty_school).permit(:school_id, :specialty_id)
    end
end
