class SubscriptionUsersController < ApplicationController
  before_action :set_subscription_user, only: [:show]

  def index
    @subscription_users = SubscriptionUser.all
  end

  def show
  end

  def new
    @subscription_user = SubscriptionUser.new
  end

  def create
    @subscription_user = SubscriptionUser.new subscription_user_params

    if @subscription_user.save
      redirect_to @subscription_user
    else
      render plain: @subscription_user.errors.full_messages
    end
  end

  private

  def set_subscription_user
    @subscription_user = SubscriptionUser.find_by id: params[:id]
  end

  def subscription_user_params
    params.require(:subscription_user).permit(:user_id, :subscription_id, :role)
  end
end
