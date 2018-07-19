class TasksolutionsController < ApplicationController
  before_action :set_tasksolution, only: [:show, :edit, :update, :destroy]

  # GET /tasksolutions
  # GET /tasksolutions.json
  def index
    @tasksolutions = Tasksolution.all
  end

  # GET /tasksolutions/1
  # GET /tasksolutions/1.json
  def show
  end

  # GET /tasksolutions/new
  def new
    @tasksolution = Tasksolution.new
  end

  # GET /tasksolutions/1/edit
  def edit
  end

  # POST /tasksolutions
  # POST /tasksolutions.json
  def create
    @tasksolution = Tasksolution.new(tasksolution_params)

    respond_to do |format|
      if @tasksolution.save
        format.html { redirect_to @tasksolution, notice: 'Tasksolution was successfully created.' }
        format.json { render :show, status: :created, location: @tasksolution }
      else
        format.html { render :new }
        format.json { render json: @tasksolution.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tasksolutions/1
  # PATCH/PUT /tasksolutions/1.json
  def update
    respond_to do |format|
      if @tasksolution.update(tasksolution_params)
        format.html { redirect_to @tasksolution, notice: 'Tasksolution was successfully updated.' }
        format.json { render :show, status: :ok, location: @tasksolution }
      else
        format.html { render :edit }
        format.json { render json: @tasksolution.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tasksolutions/1
  # DELETE /tasksolutions/1.json
  def destroy
    @tasksolution.destroy
    respond_to do |format|
      format.html { redirect_to tasksolutions_url, notice: 'Tasksolution was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tasksolution
      @tasksolution = Tasksolution.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tasksolution_params
      params.require(:tasksolution).permit(:texts, :status, :confirmed, :sid)
    end
end
