class ConnectionProductClientsController < ApplicationController
  before_action :set_connection_product_client, only: [:show, :edit, :update, :destroy]

  # GET /connection_product_clients
  # GET /connection_product_clients.json
  def index
    @connection_product_clients = ConnectionProductClient.all
  end

  # GET /connection_product_clients/1
  # GET /connection_product_clients/1.json
  def show
  end

  # GET /connection_product_clients/new
  def new
    @connection_product_client = ConnectionProductClient.new
  end

  # GET /connection_product_clients/1/edit
  def edit
  end

  # POST /connection_product_clients
  # POST /connection_product_clients.json
  def create
    @connection_product_client = ConnectionProductClient.new(connection_product_client_params)

    respond_to do |format|
      if @connection_product_client.save
        format.html { redirect_to @connection_product_client, notice: 'Connection product client was successfully created.' }
        format.json { render :show, status: :created, location: @connection_product_client }
      else
        format.html { render :new }
        format.json { render json: @connection_product_client.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /connection_product_clients/1
  # PATCH/PUT /connection_product_clients/1.json
  def update
    respond_to do |format|
      if @connection_product_client.update(connection_product_client_params)
        format.html { redirect_to @connection_product_client, notice: 'Connection product client was successfully updated.' }
        format.json { render :show, status: :ok, location: @connection_product_client }
      else
        format.html { render :edit }
        format.json { render json: @connection_product_client.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /connection_product_clients/1
  # DELETE /connection_product_clients/1.json
  def destroy
    @connection_product_client.destroy
    respond_to do |format|
      format.html { redirect_to connection_product_clients_url, notice: 'Connection product client was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_connection_product_client
      @connection_product_client = ConnectionProductClient.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def connection_product_client_params
      params.require(:connection_product_client).permit(:product_id, :client_id)
    end
end
