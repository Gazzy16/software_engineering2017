class TeacherSchoolClassesController < ApplicationController
  before_action :set_teacher_school_class, only: [:show, :edit, :update, :destroy]

  # GET /teacher_school_classes
  # GET /teacher_school_classes.json
  def index
    @teacher_school_classes = TeacherSchoolClass.all
  end

  # GET /teacher_school_classes/1
  # GET /teacher_school_classes/1.json
  def show
  end

  # GET /teacher_school_classes/new
  def new
    @teacher_school_class = TeacherSchoolClass.new
  end

  # GET /teacher_school_classes/1/edit
  def edit
  end

  # POST /teacher_school_classes
  # POST /teacher_school_classes.json
  def create
    @teacher_school_class = TeacherSchoolClass.new(teacher_school_class_params)

    respond_to do |format|
      if @teacher_school_class.save
        format.html { redirect_to @teacher_school_class, notice: 'Teacher school class was successfully created.' }
        format.json { render :show, status: :created, location: @teacher_school_class }
      else
        format.html { render :new }
        format.json { render json: @teacher_school_class.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /teacher_school_classes/1
  # PATCH/PUT /teacher_school_classes/1.json
  def update
    respond_to do |format|
      if @teacher_school_class.update(teacher_school_class_params)
        format.html { redirect_to @teacher_school_class, notice: 'Teacher school class was successfully updated.' }
        format.json { render :show, status: :ok, location: @teacher_school_class }
      else
        format.html { render :edit }
        format.json { render json: @teacher_school_class.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /teacher_school_classes/1
  # DELETE /teacher_school_classes/1.json
  def destroy
    @teacher_school_class.destroy
    respond_to do |format|
      format.html { redirect_to teacher_school_classes_url, notice: 'Teacher school class was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_teacher_school_class
      @teacher_school_class = TeacherSchoolClass.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def teacher_school_class_params
      params.require(:teacher_school_class).permit(:teacher_id, :schoolclass_id)
    end
end
