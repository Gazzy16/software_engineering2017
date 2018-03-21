class ClientsProductsController < ApplicationController
  before_action :set_clients_product, only: [:show, :edit, :update, :destroy]

  # GET /clients_products
  # GET /clients_products.json
  def index
    @clients_products = ClientsProduct.all
  end

  # GET /clients_products/1
  # GET /clients_products/1.json
  def show
  end

  # GET /clients_products/new
  def new
    @clients_product = ClientsProduct.new
  end

  # GET /clients_products/1/edit
  def edit
  end

  # POST /clients_products
  # POST /clients_products.json
  def create
    @clients_product = ClientsProduct.new(clients_product_params)

    respond_to do |format|
      if @clients_product.save
        format.html { redirect_to @clients_product, notice: 'Clients product was successfully created.' }
        format.json { render :show, status: :created, location: @clients_product }
      else
        format.html { render :new }
        format.json { render json: @clients_product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /clients_products/1
  # PATCH/PUT /clients_products/1.json
  def update
    respond_to do |format|
      if @clients_product.update(clients_product_params)
        format.html { redirect_to @clients_product, notice: 'Clients product was successfully updated.' }
        format.json { render :show, status: :ok, location: @clients_product }
      else
        format.html { render :edit }
        format.json { render json: @clients_product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /clients_products/1
  # DELETE /clients_products/1.json
  def destroy
    @clients_product.destroy
    respond_to do |format|
      format.html { redirect_to clients_products_url, notice: 'Clients product was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_clients_product
      @clients_product = ClientsProduct.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def clients_product_params
      params.require(:clients_product).permit(:client_id, :product_id)
    end
end
