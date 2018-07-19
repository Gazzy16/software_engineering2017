class SchoolSpecialtiesController < ApplicationController
  before_action :set_school_specialty, only: [:show, :edit, :update, :destroy]

  # GET /school_specialties
  # GET /school_specialties.json
  def index
    @school_specialties = SchoolSpecialty.all
  end

  # GET /school_specialties/1
  # GET /school_specialties/1.json
  def show
  end

  # GET /school_specialties/new
  def new
    @school_specialty = SchoolSpecialty.new
  end

  # GET /school_specialties/1/edit
  def edit
  end

  # POST /school_specialties
  # POST /school_specialties.json
  def create
    @school_specialty = SchoolSpecialty.new(school_specialty_params)

    respond_to do |format|
      if @school_specialty.save
        format.html { redirect_to @school_specialty, notice: 'School specialty was successfully created.' }
        format.json { render :show, status: :created, location: @school_specialty }
      else
        format.html { render :new }
        format.json { render json: @school_specialty.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /school_specialties/1
  # PATCH/PUT /school_specialties/1.json
  def update
    respond_to do |format|
      if @school_specialty.update(school_specialty_params)
        format.html { redirect_to @school_specialty, notice: 'School specialty was successfully updated.' }
        format.json { render :show, status: :ok, location: @school_specialty }
      else
        format.html { render :edit }
        format.json { render json: @school_specialty.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /school_specialties/1
  # DELETE /school_specialties/1.json
  def destroy
    @school_specialty.destroy
    respond_to do |format|
      format.html { redirect_to school_specialties_url, notice: 'School specialty was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_school_specialty
      @school_specialty = SchoolSpecialty.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def school_specialty_params
      params.require(:school_specialty).permit(:specialty_id, :school_id)
    end
end
