class SubscriptionsUsersController < ApplicationController
  before_action :set_subscriptions_user, only: [:show, :edit, :update, :destroy]

  # GET /subscriptions_users
  # GET /subscriptions_users.json
  def index
    @subscriptions_users = SubscriptionsUser.all
  end

  # GET /subscriptions_users/1
  # GET /subscriptions_users/1.json
  def show
  end

  # GET /subscriptions_users/new
  def new
    @subscriptions_user = SubscriptionsUser.new
  end

  # GET /subscriptions_users/1/edit
  def edit
  end

  # POST /subscriptions_users
  # POST /subscriptions_users.json
  def create
    @subscriptions_user = SubscriptionsUser.new(subscriptions_user_params)

    respond_to do |format|
      if @subscriptions_user.save
        format.html { redirect_to @subscriptions_user, notice: 'Subscriptions user was successfully created.' }
        format.json { render :show, status: :created, location: @subscriptions_user }
      else
        format.html { render :new }
        format.json { render json: @subscriptions_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /subscriptions_users/1
  # PATCH/PUT /subscriptions_users/1.json
  def update
    respond_to do |format|
      if @subscriptions_user.update(subscriptions_user_params)
        format.html { redirect_to @subscriptions_user, notice: 'Subscriptions user was successfully updated.' }
        format.json { render :show, status: :ok, location: @subscriptions_user }
      else
        format.html { render :edit }
        format.json { render json: @subscriptions_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /subscriptions_users/1
  # DELETE /subscriptions_users/1.json
  def destroy
    @subscriptions_user.destroy
    respond_to do |format|
      format.html { redirect_to subscriptions_users_url, notice: 'Subscriptions user was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_subscriptions_user
      @subscriptions_user = SubscriptionsUser.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def subscriptions_user_params
      params.require(:subscriptions_user).permit(:subscription_id, :user_id, :user_role)
    end
end
