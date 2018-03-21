class ProductClientConnectionsController < ApplicationController
  before_action :set_product_client_connection, only: [:show, :edit, :update, :destroy]

  # GET /product_client_connections
  # GET /product_client_connections.json
  def index
    @product_client_connections = ProductClientConnection.all
  end

  # GET /product_client_connections/1
  # GET /product_client_connections/1.json
  def show
  end

  # GET /product_client_connections/new
  def new
    @product_client_connection = ProductClientConnection.new
  end

  # GET /product_client_connections/1/edit
  def edit
  end

  # POST /product_client_connections
  # POST /product_client_connections.json
  def create
    @product_client_connection = ProductClientConnection.new(product_client_connection_params)

    respond_to do |format|
      if @product_client_connection.save
        format.html { redirect_to @product_client_connection, notice: 'Product client connection was successfully created.' }
        format.json { render :show, status: :created, location: @product_client_connection }
      else
        format.html { render :new }
        format.json { render json: @product_client_connection.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /product_client_connections/1
  # PATCH/PUT /product_client_connections/1.json
  def update
    respond_to do |format|
      if @product_client_connection.update(product_client_connection_params)
        format.html { redirect_to @product_client_connection, notice: 'Product client connection was successfully updated.' }
        format.json { render :show, status: :ok, location: @product_client_connection }
      else
        format.html { render :edit }
        format.json { render json: @product_client_connection.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /product_client_connections/1
  # DELETE /product_client_connections/1.json
  def destroy
    @product_client_connection.destroy
    respond_to do |format|
      format.html { redirect_to product_client_connections_url, notice: 'Product client connection was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product_client_connection
      @product_client_connection = ProductClientConnection.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def product_client_connection_params
      params.require(:product_client_connection).permit(:product_id, :client_id)
    end
end
