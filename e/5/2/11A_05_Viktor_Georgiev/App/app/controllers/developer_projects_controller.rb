class DeveloperProjectsController < ApplicationController
  before_action :set_developer_project, only: [:show, :edit, :update, :destroy]

  # GET /developer_projects
  # GET /developer_projects.json
  def index
    @developer_projects = DeveloperProject.all
  end

  # GET /developer_projects/1
  # GET /developer_projects/1.json
  def show
  end

  # GET /developer_projects/new
  def new
    @developer_project = DeveloperProject.new
  end

  # GET /developer_projects/1/edit
  def edit
  end

  # POST /developer_projects
  # POST /developer_projects.json
  def create
    @developer_project = DeveloperProject.new(developer_project_params)

    respond_to do |format|
      if @developer_project.save
        format.html { redirect_to @developer_project, notice: 'Developer project was successfully created.' }
        format.json { render :show, status: :created, location: @developer_project }
      else
        format.html { render :new }
        format.json { render json: @developer_project.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /developer_projects/1
  # PATCH/PUT /developer_projects/1.json
  def update
    respond_to do |format|
      if @developer_project.update(developer_project_params)
        format.html { redirect_to @developer_project, notice: 'Developer project was successfully updated.' }
        format.json { render :show, status: :ok, location: @developer_project }
      else
        format.html { render :edit }
        format.json { render json: @developer_project.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /developer_projects/1
  # DELETE /developer_projects/1.json
  def destroy
    @developer_project.destroy
    respond_to do |format|
      format.html { redirect_to developer_projects_url, notice: 'Developer project was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_developer_project
      @developer_project = DeveloperProject.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def developer_project_params
      params.require(:developer_project).permit(:project_id, :developer_id)
    end
end
