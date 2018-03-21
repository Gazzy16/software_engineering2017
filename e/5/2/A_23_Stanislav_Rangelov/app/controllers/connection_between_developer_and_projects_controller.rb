class ConnectionBetweenDeveloperAndProjectsController < ApplicationController
  before_action :set_connection_between_developer_and_project, only: [:show, :edit, :update, :destroy]

  # GET /connection_between_developer_and_projects
  # GET /connection_between_developer_and_projects.json
  def index
    @connection_between_developer_and_projects = ConnectionBetweenDeveloperAndProject.all
  end

  # GET /connection_between_developer_and_projects/1
  # GET /connection_between_developer_and_projects/1.json
  def show
  end

  # GET /connection_between_developer_and_projects/new
  def new
    @connection_between_developer_and_project = ConnectionBetweenDeveloperAndProject.new
  end

  # GET /connection_between_developer_and_projects/1/edit
  def edit
  end

  # POST /connection_between_developer_and_projects
  # POST /connection_between_developer_and_projects.json
  def create
    @connection_between_developer_and_project = ConnectionBetweenDeveloperAndProject.new(connection_between_developer_and_project_params)

    respond_to do |format|
      if @connection_between_developer_and_project.save
        format.html { redirect_to @connection_between_developer_and_project, notice: 'Connection between developer and project was successfully created.' }
        format.json { render :show, status: :created, location: @connection_between_developer_and_project }
      else
        format.html { render :new }
        format.json { render json: @connection_between_developer_and_project.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /connection_between_developer_and_projects/1
  # PATCH/PUT /connection_between_developer_and_projects/1.json
  def update
    respond_to do |format|
      if @connection_between_developer_and_project.update(connection_between_developer_and_project_params)
        format.html { redirect_to @connection_between_developer_and_project, notice: 'Connection between developer and project was successfully updated.' }
        format.json { render :show, status: :ok, location: @connection_between_developer_and_project }
      else
        format.html { render :edit }
        format.json { render json: @connection_between_developer_and_project.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /connection_between_developer_and_projects/1
  # DELETE /connection_between_developer_and_projects/1.json
  def destroy
    @connection_between_developer_and_project.destroy
    respond_to do |format|
      format.html { redirect_to connection_between_developer_and_projects_url, notice: 'Connection between developer and project was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_connection_between_developer_and_project
      @connection_between_developer_and_project = ConnectionBetweenDeveloperAndProject.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def connection_between_developer_and_project_params
      params.require(:connection_between_developer_and_project).permit(:developer_id, :project_id)
    end
end
