class DeveloperProjectConnectionsController < ApplicationController
  before_action :set_developer_project_connection, only: [:show, :edit, :update, :destroy]

  # GET /developer_project_connections
  # GET /developer_project_connections.json
  def index
    @developer_project_connections = DeveloperProjectConnection.all
  end

  # GET /developer_project_connections/1
  # GET /developer_project_connections/1.json
  def show
  end

  # GET /developer_project_connections/new
  def new
    @developer_project_connection = DeveloperProjectConnection.new
  end

  # GET /developer_project_connections/1/edit
  def edit
  end

  # POST /developer_project_connections
  # POST /developer_project_connections.json
  def create
    @developer_project_connection = DeveloperProjectConnection.new(developer_project_connection_params)

    respond_to do |format|
      if @developer_project_connection.save
        format.html { redirect_to @developer_project_connection, notice: 'Developer project connection was successfully created.' }
        format.json { render :show, status: :created, location: @developer_project_connection }
      else
        format.html { render :new }
        format.json { render json: @developer_project_connection.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /developer_project_connections/1
  # PATCH/PUT /developer_project_connections/1.json
  def update
    respond_to do |format|
      if @developer_project_connection.update(developer_project_connection_params)
        format.html { redirect_to @developer_project_connection, notice: 'Developer project connection was successfully updated.' }
        format.json { render :show, status: :ok, location: @developer_project_connection }
      else
        format.html { render :edit }
        format.json { render json: @developer_project_connection.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /developer_project_connections/1
  # DELETE /developer_project_connections/1.json
  def destroy
    @developer_project_connection.destroy
    respond_to do |format|
      format.html { redirect_to developer_project_connections_url, notice: 'Developer project connection was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_developer_project_connection
      @developer_project_connection = DeveloperProjectConnection.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def developer_project_connection_params
      params.require(:developer_project_connection).permit(:delevoper_id, :project_id)
    end
end
