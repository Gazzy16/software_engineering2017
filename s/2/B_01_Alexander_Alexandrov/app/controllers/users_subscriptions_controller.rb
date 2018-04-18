class UsersSubscriptionsController < ApplicationController
  before_action :set_users_subscription, only: [:show, :edit, :update, :destroy]

  # GET /users_subscriptions
  # GET /users_subscriptions.json
  def index
    @users_subscriptions = UsersSubscription.all
    @users = User.all
    @subscriptions = Subscription.all
  end

  # GET /users_subscriptions/1
  # GET /users_subscriptions/1.json
  def show
  end

  # GET /users_subscriptions/new
  def new
    @users_subscription = UsersSubscription.new
  end

  # GET /users_subscriptions/1/edit
  def edit
  end

  # POST /users_subscriptions
  # POST /users_subscriptions.json
  def create
    @users_subscription = UsersSubscription.new(users_subscription_params)

    respond_to do |format|
      if @users_subscription.save
        format.html { redirect_to @users_subscription, notice: 'Users subscription was successfully created.' }
        format.json { render :show, status: :created, location: @users_subscription }
      else
        format.html { render :new }
        format.json { render json: @users_subscription.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /users_subscriptions/1
  # PATCH/PUT /users_subscriptions/1.json
  def update
    respond_to do |format|
      if @users_subscription.update(users_subscription_params)
        format.html { redirect_to @users_subscription, notice: 'Users subscription was successfully updated.' }
        format.json { render :show, status: :ok, location: @users_subscription }
      else
        format.html { render :edit }
        format.json { render json: @users_subscription.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users_subscriptions/1
  # DELETE /users_subscriptions/1.json
  def destroy
    @users_subscription.destroy
    respond_to do |format|
      format.html { redirect_to users_subscriptions_url, notice: 'Users subscription was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_users_subscription
      @users_subscription = UsersSubscription.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def users_subscription_params
      params.require(:users_subscription).permit(:user_id, :subscription_id, :role)
    end
end
