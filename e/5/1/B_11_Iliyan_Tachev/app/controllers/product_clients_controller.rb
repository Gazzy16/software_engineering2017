class ProductClientsController < ApplicationController
  before_action :set_product_client, only: [:show, :edit, :update, :destroy]

  # GET /product_clients
  # GET /product_clients.json
  def index
    @product_clients = ProductClient.all
  end

  # GET /product_clients/1
  # GET /product_clients/1.json
  def show
  end

  # GET /product_clients/new
  def new
    @product_client = ProductClient.new
  end

  # GET /product_clients/1/edit
  def edit
  end

  # POST /product_clients
  # POST /product_clients.json
  def create
    @product_client = ProductClient.new(product_client_params)

    respond_to do |format|
      if @product_client.save
        format.html { redirect_to @product_client, notice: 'Product client was successfully created.' }
        format.json { render :show, status: :created, location: @product_client }
      else
        format.html { render :new }
        format.json { render json: @product_client.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /product_clients/1
  # PATCH/PUT /product_clients/1.json
  def update
    respond_to do |format|
      if @product_client.update(product_client_params)
        format.html { redirect_to @product_client, notice: 'Product client was successfully updated.' }
        format.json { render :show, status: :ok, location: @product_client }
      else
        format.html { render :edit }
        format.json { render json: @product_client.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /product_clients/1
  # DELETE /product_clients/1.json
  def destroy
    @product_client.destroy
    respond_to do |format|
      format.html { redirect_to product_clients_url, notice: 'Product client was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product_client
      @product_client = ProductClient.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def product_client_params
      params.require(:product_client).permit(:product_name, :client_name)
    end
end
