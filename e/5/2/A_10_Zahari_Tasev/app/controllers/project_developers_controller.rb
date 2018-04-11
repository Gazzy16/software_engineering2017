class ProjectDevelopersController < ApplicationController
  before_action :set_project_developer, only: [:show, :edit, :update, :destroy]

  # GET /project_developers
  # GET /project_developers.json
  def index
    @project_developers = ProjectDeveloper.all
  end

  # GET /project_developers/1
  # GET /project_developers/1.json
  def show
  end

  # GET /project_developers/new
  def new
    @project_developer = ProjectDeveloper.new
  end

  # GET /project_developers/1/edit
  def edit
  end

  # POST /project_developers
  # POST /project_developers.json
  def create
    @project_developer = ProjectDeveloper.new(project_developer_params)

    respond_to do |format|
      if @project_developer.save
        format.html { redirect_to @project_developer, notice: 'Project developer was successfully created.' }
        format.json { render :show, status: :created, location: @project_developer }
      else
        format.html { render :new }
        format.json { render json: @project_developer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /project_developers/1
  # PATCH/PUT /project_developers/1.json
  def update
    respond_to do |format|
      if @project_developer.update(project_developer_params)
        format.html { redirect_to @project_developer, notice: 'Project developer was successfully updated.' }
        format.json { render :show, status: :ok, location: @project_developer }
      else
        format.html { render :edit }
        format.json { render json: @project_developer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /project_developers/1
  # DELETE /project_developers/1.json
  def destroy
    @project_developer.destroy
    respond_to do |format|
      format.html { redirect_to project_developers_url, notice: 'Project developer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_project_developer
      @project_developer = ProjectDeveloper.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def project_developer_params
      params.require(:project_developer).permit(:dev_id, :proj_id)
    end
end
