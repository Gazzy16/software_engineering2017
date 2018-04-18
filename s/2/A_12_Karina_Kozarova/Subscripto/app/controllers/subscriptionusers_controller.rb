class SubscriptionusersController < ApplicationController
  before_action :set_subscriptionuser, only: [:show, :edit, :update, :destroy]

  # GET /subscriptionusers
  # GET /subscriptionusers.json
  def index
    @subscriptionusers = Subscriptionuser.all
  end

  # GET /subscriptionusers/1
  # GET /subscriptionusers/1.json
  def show
  end

  # GET /subscriptionusers/new
  def new
    @subscriptionuser = Subscriptionuser.new
  end

  # GET /subscriptionusers/1/edit
  def edit
  end

  # POST /subscriptionusers
  # POST /subscriptionusers.json
  def create
    @subscriptionuser = Subscriptionuser.new(subscriptionuser_params)

    respond_to do |format|
      if @subscriptionuser.save
        format.html { redirect_to @subscriptionuser, notice: 'Subscriptionuser was successfully created.' }
        format.json { render :show, status: :created, location: @subscriptionuser }
      else
        format.html { render :new }
        format.json { render json: @subscriptionuser.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /subscriptionusers/1
  # PATCH/PUT /subscriptionusers/1.json
  def update
    respond_to do |format|
      if @subscriptionuser.update(subscriptionuser_params)
        format.html { redirect_to @subscriptionuser, notice: 'Subscriptionuser was successfully updated.' }
        format.json { render :show, status: :ok, location: @subscriptionuser }
      else
        format.html { render :edit }
        format.json { render json: @subscriptionuser.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /subscriptionusers/1
  # DELETE /subscriptionusers/1.json
  def destroy
    @subscriptionuser.destroy
    respond_to do |format|
      format.html { redirect_to subscriptionusers_url, notice: 'Subscriptionuser was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_subscriptionuser
      @subscriptionuser = Subscriptionuser.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def subscriptionuser_params
      params.require(:subscriptionuser).permit(:price, :user_id, :subscription_id)
    end
end
