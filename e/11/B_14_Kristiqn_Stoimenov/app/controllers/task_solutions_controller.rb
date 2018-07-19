class TaskSolutionsController < ApplicationController
  before_action :set_task_solution, only: [:show, :edit, :update, :destroy]

  # GET /task_solutions
  # GET /task_solutions.json
  def index
    @task_solutions = TaskSolution.all
  end

  # GET /task_solutions/1
  # GET /task_solutions/1.json
  def show
  end

  # GET /task_solutions/new
  def new
    @task_solution = TaskSolution.new
  end

  # GET /task_solutions/1/edit
  def edit
  end

  # POST /task_solutions
  # POST /task_solutions.json
  def create
    @task_solution = TaskSolution.new(task_solution_params)

    respond_to do |format|
      if @task_solution.save
        format.html { redirect_to @task_solution, notice: 'Task solution was successfully created.' }
        format.json { render :show, status: :created, location: @task_solution }
      else
        format.html { render :new }
        format.json { render json: @task_solution.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /task_solutions/1
  # PATCH/PUT /task_solutions/1.json
  def update
    respond_to do |format|
      if @task_solution.update(task_solution_params)
        format.html { redirect_to @task_solution, notice: 'Task solution was successfully updated.' }
        format.json { render :show, status: :ok, location: @task_solution }
      else
        format.html { render :edit }
        format.json { render json: @task_solution.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /task_solutions/1
  # DELETE /task_solutions/1.json
  def destroy
    @task_solution.destroy
    respond_to do |format|
      format.html { redirect_to task_solutions_url, notice: 'Task solution was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_task_solution
      @task_solution = TaskSolution.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def task_solution_params
      params.require(:task_solution).permit(:picture, :status, :confirmed, :task_id)
    end
end
