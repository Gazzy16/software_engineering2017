class UserSubscribtionConnectionsController < ApplicationController
  before_action :set_user_subscribtion_connection, only: [:show, :edit, :update, :destroy]

  # GET /user_subscribtion_connections
  # GET /user_subscribtion_connections.json
  def index
    @user_subscribtion_connections = UserSubscribtionConnection.all
  end

  # GET /user_subscribtion_connections/1
  # GET /user_subscribtion_connections/1.json
  def show
  end

  # GET /user_subscribtion_connections/new
  def new
    @user_subscribtion_connection = UserSubscribtionConnection.new
  end

  # GET /user_subscribtion_connections/1/edit
  def edit
  end

  # POST /user_subscribtion_connections
  # POST /user_subscribtion_connections.json
  def create
    @user_subscribtion_connection = UserSubscribtionConnection.new(user_subscribtion_connection_params)

    respond_to do |format|
      if @user_subscribtion_connection.save
        format.html { redirect_to @user_subscribtion_connection, notice: 'User subscribtion connection was successfully created.' }
        format.json { render :show, status: :created, location: @user_subscribtion_connection }
      else
        format.html { render :new }
        format.json { render json: @user_subscribtion_connection.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_subscribtion_connections/1
  # PATCH/PUT /user_subscribtion_connections/1.json
  def update
    respond_to do |format|
      if @user_subscribtion_connection.update(user_subscribtion_connection_params)
        format.html { redirect_to @user_subscribtion_connection, notice: 'User subscribtion connection was successfully updated.' }
        format.json { render :show, status: :ok, location: @user_subscribtion_connection }
      else
        format.html { render :edit }
        format.json { render json: @user_subscribtion_connection.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_subscribtion_connections/1
  # DELETE /user_subscribtion_connections/1.json
  def destroy
    @user_subscribtion_connection.destroy
    respond_to do |format|
      format.html { redirect_to user_subscribtion_connections_url, notice: 'User subscribtion connection was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_subscribtion_connection
      @user_subscribtion_connection = UserSubscribtionConnection.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_subscribtion_connection_params
      params.require(:user_subscribtion_connection).permit(:user_id, :subscription_id, :role)
    end
end
