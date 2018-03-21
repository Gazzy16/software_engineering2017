class ClientProductConnectionsController < ApplicationController
  before_action :set_client_product_connection, only: [:show, :edit, :update, :destroy]

  # GET /client_product_connections
  # GET /client_product_connections.json
  def index
    @client_product_connections = ClientProductConnection.all
  end

  # GET /client_product_connections/1
  # GET /client_product_connections/1.json
  def show
  end

  # GET /client_product_connections/new
  def new
    @client_product_connection = ClientProductConnection.new
  end

  # GET /client_product_connections/1/edit
  def edit
  end

  # POST /client_product_connections
  # POST /client_product_connections.json
  def create
    @client_product_connection = ClientProductConnection.new(client_product_connection_params)

    respond_to do |format|
      if @client_product_connection.save
        format.html { redirect_to @client_product_connection, notice: 'Client product connection was successfully created.' }
        format.json { render :show, status: :created, location: @client_product_connection }
      else
        format.html { render :new }
        format.json { render json: @client_product_connection.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /client_product_connections/1
  # PATCH/PUT /client_product_connections/1.json
  def update
    respond_to do |format|
      if @client_product_connection.update(client_product_connection_params)
        format.html { redirect_to @client_product_connection, notice: 'Client product connection was successfully updated.' }
        format.json { render :show, status: :ok, location: @client_product_connection }
      else
        format.html { render :edit }
        format.json { render json: @client_product_connection.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /client_product_connections/1
  # DELETE /client_product_connections/1.json
  def destroy
    @client_product_connection.destroy
    respond_to do |format|
      format.html { redirect_to client_product_connections_url, notice: 'Client product connection was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_client_product_connection
      @client_product_connection = ClientProductConnection.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def client_product_connection_params
      params.require(:client_product_connection).permit(:client_id, :product_id)
    end
end
