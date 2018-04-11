class ConnectionSubCustomersController < ApplicationController
  before_action :set_connection_sub_customer, only: [:show, :edit, :update, :destroy]

  # GET /connection_sub_customers
  # GET /connection_sub_customers.json
  def index
    @connection_sub_customers = ConnectionSubCustomer.all
  end

  # GET /connection_sub_customers/1
  # GET /connection_sub_customers/1.json
  def show
  end

  # GET /connection_sub_customers/new
  def new
    @connection_sub_customer = ConnectionSubCustomer.new
  end

  # GET /connection_sub_customers/1/edit
  def edit
  end

  # POST /connection_sub_customers
  # POST /connection_sub_customers.json
  def create
    @connection_sub_customer = ConnectionSubCustomer.new(connection_sub_customer_params)

    respond_to do |format|
      if @connection_sub_customer.save
        format.html { redirect_to @connection_sub_customer, notice: 'Connection sub customer was successfully created.' }
        format.json { render :show, status: :created, location: @connection_sub_customer }
      else
        format.html { render :new }
        format.json { render json: @connection_sub_customer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /connection_sub_customers/1
  # PATCH/PUT /connection_sub_customers/1.json
  def update
    respond_to do |format|
      if @connection_sub_customer.update(connection_sub_customer_params)
        format.html { redirect_to @connection_sub_customer, notice: 'Connection sub customer was successfully updated.' }
        format.json { render :show, status: :ok, location: @connection_sub_customer }
      else
        format.html { render :edit }
        format.json { render json: @connection_sub_customer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /connection_sub_customers/1
  # DELETE /connection_sub_customers/1.json
  def destroy
    @connection_sub_customer.destroy
    respond_to do |format|
      format.html { redirect_to connection_sub_customers_url, notice: 'Connection sub customer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_connection_sub_customer
      @connection_sub_customer = ConnectionSubCustomer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def connection_sub_customer_params
      params.fetch(:connection_sub_customer, {})
    end
end
